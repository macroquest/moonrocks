local git_ref = 'd1e25492d3121ea740cf2da92439f377e7958107'
local modrev = '1.6.50'
local specrev = '1'

local repo_url = 'https://github.com/MagicDuck/grug-far.nvim'

rockspec_format = '3.0'
package = 'grug-far.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Find And Replace plugin for neovim',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/MagicDuck/grug-far.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'grug-far.nvim-' .. 'd1e25492d3121ea740cf2da92439f377e7958107',
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
