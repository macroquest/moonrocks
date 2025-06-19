local git_ref = 'v2.0.0'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/NTBBloodbath/fallo'

rockspec_format = '3.0'
package = 'fallo'
version = modrev ..'-'.. specrev

description = {
  summary = 'Modern and ergonomic error handling for Lua, inspired by Rust\'s Result',
  detailed = '',
  labels = { 'error-handling', 'library', 'lua' } ,
  homepage = 'https://github.com/NTBBloodbath/fallo',
  license = 'LGPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'busted' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fallo-' .. '2.0.0',
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
