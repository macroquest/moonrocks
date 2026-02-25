local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/mdtypes.nvim'

rockspec_format = '3.0'
package = 'mdtypes.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Automatic Lua type-definition & evaluated expressions generator for markdown.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/mdtypes.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-markdown', 'tree-sitter-lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'mdtypes.nvim-' .. '1.0.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
