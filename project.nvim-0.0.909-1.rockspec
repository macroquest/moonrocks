local git_ref = '59426ea6038b805aaaa5739a2d9fcc418d4bae22'
local modrev = '0.0.909'
local specrev = '1'

local repo_url = 'https://github.com/DrKJeff16/project.nvim'

rockspec_format = '3.0'
package = 'project.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A Neovim plugin that sets the cwd to the project root, stores projects in a history file, includes a telescope picker, supports fzf-lua, and provides UI tools',
  detailed = [[
A Neovim plugin written in Lua that, under configurable conditions, automatically sets
the user's cwd to the current project root and provides project management.]],
  labels = { 'neovim' } ,
  homepage = 'https://github.com/DrKJeff16/project.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1', 'plenary.nvim', 'telescope.nvim', 'fzf-lua' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'project.nvim-' .. '59426ea6038b805aaaa5739a2d9fcc418d4bae22',
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
