local git_ref = '0.0.2'
local modrev = '0.0.2'
local specrev = '-1'

local repo_url = 'https://github.com/danyspin97/tree-sitter-ysh'

rockspec_format = '3.0'
package = 'tree-sitter-ysh'
version = modrev .. specrev

description = {
  summary = '',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/danyspin97/tree-sitter-ysh',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tree-sitter-ysh-' .. '0.0.2',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
