local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/codymikol/neotest-kotlin'

rockspec_format = '3.0'
package = 'neotest-kotlin'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/codymikol/neotest-kotlin',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'tree-sitter-kotlin' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-kotlin-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
