local git_ref = '575a1345f0ca8527418817147b7a187aeef1108e'
local modrev = '1.9.1'
local specrev = '1'

local repo_url = 'https://github.com/YousefHadder/markdown-plus.nvim'

rockspec_format = '3.0'
package = 'markdown-plus.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Modern Markdown editing for Neovim',
  detailed = [[
A comprehensive Neovim plugin that provides modern markdown editing
capabilities, implementing features found in popular editors like Typora,
Mark Text, and Obsidian.
Features:
- Smart list management with auto-continuation and renumbering
- Text formatting (bold, italic, strikethrough, inline code)
- Header navigation and promotion/demotion
- Table of contents generation with GitHub-compatible slugs
- Link management and reference-style conversion
- Full <Plug> mapping support for customization
- vim.g configuration support for Vimscript compatibility
- Works with any filetype, not just markdown]],
  labels = { 'neovim', 'markdown', 'editor', 'productivity' } ,
  homepage = 'https://github.com/YousefHadder/markdown-plus.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { 'nlua' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'markdown-plus.nvim-' .. '575a1345f0ca8527418817147b7a187aeef1108e',
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
