local git_ref = 'v2.2.0'
local modrev = '2.2.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/notify.nvim'

rockspec_format = '3.0'
package = 'notify.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'notification framework plugin for neovim',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/notify.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'notify.nvim-' .. '2.2.0',
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
