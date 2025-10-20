local git_ref = 'f8b381c8e9bd05c2aa3734bb6a152f0ba82f54ca'
local modrev = '0.1.1'
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

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'project.nvim-' .. 'f8b381c8e9bd05c2aa3734bb6a152f0ba82f54ca',
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
