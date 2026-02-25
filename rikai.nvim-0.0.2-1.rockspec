local git_ref = '0.0.2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/teto/rikai.nvim'

rockspec_format = '3.0'
package = 'rikai.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'rikaitan for neovim, i.e., japanese translation integrated ',
  detailed = [[
rikai.nvim]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/teto/rikai.nvim',
  license = 'LGPL-3.0'
}

dependencies = { 'lua == 5.1', 'sqlite', 'utf8', 'mega.cmdparse', 'alogger' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rikai.nvim-' .. '0.0.2',
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
