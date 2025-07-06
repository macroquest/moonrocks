local git_ref = 'a8e5a5d3b763ff376fa8c310abb925406981dc12'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/rcasia/lest'

rockspec_format = '3.0'
package = 'lest'
version = modrev ..'-'.. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/rcasia/lest',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'mini.test', 'argparse', 'nlua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lest-' .. 'a8e5a5d3b763ff376fa8c310abb925406981dc12',
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
