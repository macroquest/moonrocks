local git_ref = 'v0.6.0'
local modrev = '0.6.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/nvim-plug'

rockspec_format = '3.0'
package = 'nvim-plug'
version = modrev ..'-'.. specrev

description = {
  summary = 'simple neovim plugin manager written in Lua',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/nvim-plug',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-plug-' .. '0.6.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
