local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/barrett-ruth/auto-theme.nvim'

rockspec_format = '3.0'
package = 'auto-theme.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'automic theme-switcher for neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/barrett-ruth/auto-theme.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'auto-theme.nvim-' .. '0.1.0',
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
