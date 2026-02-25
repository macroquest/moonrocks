local git_ref = '73a6ebc842cf81926eb1d424820b800f6f6a1227'
local modrev = '8.11.0'
local specrev = '1'

local repo_url = 'https://github.com/MeanderingProgrammer/render-markdown.nvim'

rockspec_format = '3.0'
package = 'render-markdown.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Plugin to improve viewing Markdown files in Neovim',
  detailed = '',
  labels = { 'lua', 'markdown', 'neovim', 'neovim-plugin', 'nvim', 'nvim-plugin' } ,
  homepage = 'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'tree-sitter-markdown', 'tree-sitter-latex', 'nvim-web-devicons' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'render-markdown.nvim-' .. '73a6ebc842cf81926eb1d424820b800f6f6a1227',
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
