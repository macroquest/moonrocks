local git_ref = '0.0.12'
local modrev = '0.0.12'
local specrev = '1'

local repo_url = 'https://github.com/ustctug/texrocks'

rockspec_format = '3.0'
package = 'texrocks'
version = modrev ..'-'.. specrev

description = {
  summary = 'A (La)TeX package manager powered by luarocks and luaTeX.',
  detailed = '',
  labels = { 'latex', 'lualatex', 'luatex', 'tex', 'texinfo' } ,
  homepage = 'https://luarocks.org/m/texmf',
  license = 'GPL-3.0'
}

dependencies = { "argparse" }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'texrocks-' .. '0.0.12',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  install = {
    bin = { "bin/texrocks" }
  }
}

deploy = {
  wrap_bin_scripts = false
}
