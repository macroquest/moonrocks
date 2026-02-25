local git_ref = 'v0.1.1'
local modrev = '0.1.1'
local specrev = '1'

local repo_url = 'https://github.com/SyedAsimShah1/quick-todo.nvim'

rockspec_format = '3.0'
package = 'quick-todo.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A minimal Neovim plugin to quickly define, manage and complete tasks per project ',
  detailed = [[
A minimal Neovim plugin to quickly define, manage and complete tasks per project.]],
  labels = { },
  homepage = 'https://github.com/SyedAsimShah1/quick-todo.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'quick-todo.nvim-' .. '0.1.1',
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
