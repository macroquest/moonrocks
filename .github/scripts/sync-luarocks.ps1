#!/usr/bin/env pwsh
$ErrorActionPreference = 'Stop'
$ProgressPreference    = 'SilentlyContinue'

$tmp          = if ($env:RUNNER_TEMP) { $env:RUNNER_TEMP } else { [System.IO.Path]::GetTempPath() }
$manifestPath = Join-Path $tmp 'manifest.lua'

Write-Host 'Fetching https://luarocks.org/manifest ...'
Invoke-WebRequest -Uri 'https://luarocks.org/manifest' -OutFile $manifestPath
Write-Host ("Manifest size: {0:N0} bytes" -f (Get-Item $manifestPath).Length)

# Walks the manifest text and emits (name, version, arch) for every
# repository[pkg][ver] = { { arch = "..." }, ... } entry. Tracks brace
# depth so we know which named-key scope each `arch = "..."` belongs to.
$text = Get-Content -Raw -Path $manifestPath
# Lua manifests use both `["pkg-name"] = {` (when the name isn't a valid Lua
# identifier) and bareword `pkgname = {` (when it is) -- match both forms.
$tokenRe = '(?:\["(?<key>[^"]+)"\]\s*=\s*\{)|(?:(?<bkey>[A-Za-z_][A-Za-z0-9_]*)\s*=\s*\{)|(?<open>\{)|(?<close>\})|(?:arch\s*=\s*"(?<arch>[^"]+)")'
$tokens  = [regex]::Matches($text, $tokenRe)

$depth   = 0
$stack   = New-Object System.Collections.Generic.List[object]
$entries = New-Object System.Collections.Generic.List[object]
foreach ($t in $tokens) {
  if ($t.Groups['key'].Success) {
    $depth++
    $stack.Add([pscustomobject]@{ Key = $t.Groups['key'].Value; Depth = $depth })
  } elseif ($t.Groups['bkey'].Success) {
    $depth++
    $stack.Add([pscustomobject]@{ Key = $t.Groups['bkey'].Value; Depth = $depth })
  } elseif ($t.Groups['open'].Success) {
    $depth++
  } elseif ($t.Groups['close'].Success) {
    $depth--
    while ($stack.Count -gt 0 -and $stack[$stack.Count - 1].Depth -gt $depth) {
      $stack.RemoveAt($stack.Count - 1)
    }
  } elseif ($t.Groups['arch'].Success -and $stack.Count -ge 2) {
    $name = $stack[$stack.Count - 2].Key
    $ver  = $stack[$stack.Count - 1].Key
    $arch = $t.Groups['arch'].Value
    $file = if ($arch -eq 'rockspec') { "$name-$ver.rockspec" } else { "$name-$ver.$arch.rock" }
    $entries.Add([pscustomobject]@{ Name = $name; Version = $ver; File = $file })
  }
}
Remove-Item $manifestPath -ErrorAction SilentlyContinue
Write-Host "Manifest entries: $($entries.Count)"

$existing = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
Get-ChildItem -File |
  Where-Object { $_.Name -like '*.rock' -or $_.Name -like '*.rockspec' } |
  ForEach-Object { [void]$existing.Add($_.Name) }
Write-Host "Local files: $($existing.Count)"

$missing = New-Object System.Collections.Generic.List[object]
foreach ($e in $entries) {
  if (-not $existing.Contains($e.File)) { $missing.Add($e) }
}
Write-Host "Missing: $($missing.Count)"

if ($missing.Count -eq 0) {
  Write-Host 'Up to date.'
  exit 0
}

$downloaded = New-Object System.Collections.Generic.List[object]
$failed     = New-Object System.Collections.Generic.List[object]
$i = 0
foreach ($m in $missing) {
  $i++
  $tmpFile = "$($m.File).downloading"
  try {
    Invoke-WebRequest -Uri "https://luarocks.org/$($m.File)" -OutFile $tmpFile
    Move-Item -Path $tmpFile -Destination $m.File -Force
    $downloaded.Add($m)
  } catch {
    if (Test-Path $tmpFile) { Remove-Item $tmpFile -Force -ErrorAction SilentlyContinue }
    Write-Warning "Failed: $($m.File) -- $($_.Exception.Message)"
    $failed.Add($m)
  }
  if ($i % 50 -eq 0) { Write-Host "  $i / $($missing.Count)" }
}
Write-Host "Downloaded: $($downloaded.Count). Failed: $($failed.Count)."

if ($downloaded.Count -eq 0) {
  if ($failed.Count -gt 0) { exit 1 } else { exit 0 }
}

$grouped = $downloaded | Group-Object Name | Sort-Object Name
$dateStr = (Get-Date -Format 'yyyy-MM-dd')
$subject = "Sync from luarocks.org ($dateStr): $($grouped.Count) packages, $($downloaded.Count) files"

$body = New-Object System.Collections.Generic.List[string]
$body.Add('')
foreach ($g in $grouped) {
  $vers = ($g.Group | Select-Object -ExpandProperty Version | Sort-Object -Unique) -join ', '
  $body.Add("- $($g.Name): $vers")
}
if ($failed.Count -gt 0) {
  $body.Add('')
  $body.Add("$($failed.Count) downloads failed:")
  foreach ($f in $failed) { $body.Add("  - $($f.File)") }
}

$msgPath = Join-Path $tmp 'commit-msg.txt'
@($subject) + $body | Set-Content -Path $msgPath -Encoding utf8

git config user.name  'luarocks-sync[bot]'
git config user.email '41898282+github-actions[bot]@users.noreply.github.com'
git add -- '*.rock' '*.rockspec'
git commit -F $msgPath
git push
Remove-Item $msgPath -ErrorAction SilentlyContinue
