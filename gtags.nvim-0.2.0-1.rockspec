local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/gtags.nvim'

rockspec_format = '3.0'
package = 'gtags.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A lightweight Neovim plugin that integrates gtags with Neovim.',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/gtags.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'job.nvim', 'notify.nvim', 'logger.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gtags.nvim-' .. '0.2.0',
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
