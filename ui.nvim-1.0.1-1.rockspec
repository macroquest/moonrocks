local git_ref = 'v1.0.1'
local modrev = '1.0.1'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/ui.nvim'

rockspec_format = '3.0'
package = 'ui.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A blueprint/template/guide to customize Neovim\'s UI using Lua.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/ui.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ui.nvim-' .. '1.0.1',
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
