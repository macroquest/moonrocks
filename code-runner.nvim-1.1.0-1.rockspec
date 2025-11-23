local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/code-runner.nvim'

rockspec_format = '3.0'
package = 'code-runner.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Async Code Runner for Neovim',
  detailed = '',
  labels = { 'neovim-plugin' } ,
  homepage = 'https://github.com/wsdjeg/code-runner.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'job.nvim', 'notify.nvim' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'code-runner.nvim-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'syntax' } ,
}
