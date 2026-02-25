local git_ref = 'cd67a492523940c2ba668ab6904a312ff3df0e7b'
local modrev = 'master'
local specrev = '1'

local repo_url = 'https://github.com/wsdjeg/ChineseLinter.nvim'

rockspec_format = '3.0'
package = 'chineselinter.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/wsdjeg/ChineseLinter.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ChineseLinter.nvim-' .. 'cd67a492523940c2ba668ab6904a312ff3df0e7b',
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
