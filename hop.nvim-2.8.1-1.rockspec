local git_ref = 'v2.8.1'
local modrev = '2.8.1'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/hop.nvim'

rockspec_format = '3.0'
package = 'hop.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim motions on speed!',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/wsdjeg/hop.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'hop.nvim-' .. '2.8.1',
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
