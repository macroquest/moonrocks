local git_ref = 'v2.0.1'
local modrev = '2.0.1'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/tasks.nvim'

rockspec_format = '3.0'
package = 'tasks.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'tasks manager for neovim',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/tasks.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'toml.nvim', 'code-runner.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tasks.nvim-' .. '2.0.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin', 'syntax' } ,
}
