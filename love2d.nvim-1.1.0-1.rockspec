local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/S1M0N38/love2d.nvim'

rockspec_format = '3.0'
package = 'love2d.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '♡ A simple Neovim plugin to build games with LÖVE',
  detailed = [[
A template for Neovim plugin]],
  labels = { 'love2d', 'neovim', 'nvim-plugin' } ,
  homepage = 'https://github.com/S1M0N38/love2d.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'love2d.nvim-' .. '1.1.0',
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
