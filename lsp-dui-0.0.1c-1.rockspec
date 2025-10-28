local git_ref = 'v0.0.1c'
local modrev = '0.0.1c'
local specrev = '1'

local repo_url = 'https://github.com/kokaito-git/lsp-dui'

rockspec_format = '3.0'
package = 'lsp-dui'
version = modrev ..'-'.. specrev

description = {
  summary = 'nvim plugin to display LSP issues at the file/line level, copy errors, etc.',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/kokaito-git/lsp-dui',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lsp-dui-' .. '0.0.1c',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
