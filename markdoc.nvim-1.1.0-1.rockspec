local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/OXY2DEV/markdoc.nvim'

rockspec_format = '3.0'
package = 'markdoc.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Tree-sitter based markdown -> vimdoc converter plugin for Neovim',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/OXY2DEV/markdoc.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-markdown', 'tree-sitter-markdown_inline', 'tree-sitter-html' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'markdoc.nvim-' .. '1.1.0',
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
