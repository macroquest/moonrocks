local git_ref = '42d6aed4e94e0f0bbced16bbdcc42f57673bd75e'
local modrev = '2.0.0'
local specrev = '1'

local repo_url = 'https://github.com/lewis6991/gitsigns.nvim'

rockspec_format = '3.0'
package = 'gitsigns.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Git integration for buffers',
  detailed = '',
  labels = { 'git', 'lua', 'neovim', 'neovim-lua-plugin', 'neovim-plugin', 'nvim' } ,
  homepage = 'https://github.com/lewis6991/gitsigns.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'gitsigns.nvim-' .. '42d6aed4e94e0f0bbced16bbdcc42f57673bd75e',
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
