local git_ref = '2cf3544fb55cdd428a9a1b7154aea9c9823426e8'
local modrev = '5.11.1'
local specrev = '1'

local repo_url = 'https://github.com/nvim-neotest/neotest'

rockspec_format = '3.0'
package = 'neotest'
version = modrev ..'-'.. specrev

description = {
  summary = 'An extensible framework for interacting with tests within NeoVim.',
  detailed = '',
  labels = { 'lua', 'neovim' } ,
  homepage = 'https://github.com/nvim-neotest/neotest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'nvim-nio' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-' .. '2cf3544fb55cdd428a9a1b7154aea9c9823426e8',
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
