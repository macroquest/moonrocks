local git_ref = '0.2'
local modrev = '0.2'
local specrev = '-1'

local repo_url = 'https://github.com/rest-nvim/rest.nvim'

rockspec_format = '3.0'
package = 'rest.nvim'
version = modrev .. specrev

description = {
  summary = 'A fast Neovim http client written in Lua',
  detailed = '',
  labels = { 'curl', 'http-client', 'lua', 'neovim', 'neovim-plugin', 'nvim', 'rest-client' } ,
  homepage = 'https://github.com/rest-nvim/rest.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rest.nvim-' .. '0.2',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
