local git_ref = 'v1.0.0'
local modrev = '1.0.0'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/logevent.nvim'

rockspec_format = '3.0'
package = 'logevent.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/wsdjeg/logevent.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'logevent.nvim-' .. '1.0.0',
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
