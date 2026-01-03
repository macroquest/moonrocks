local git_ref = 'v0.0.2'
local modrev = '0.0.2'
local specrev = '1'

local repo_url = 'https://github.com/hrsh7th/nvim-cmp'

rockspec_format = '3.0'
package = 'nvim-cmp'
version = modrev ..'-'.. specrev

description = {
  summary = 'Completion engine plugin for neovim written in Lua. Completion sources are installed from external repositories and \'sourced\'.',
  detailed = '',
  labels = { 'neovim' } ,
  homepage = 'https://github.com/hrsh7th/nvim-cmp',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-cmp-' .. '0.0.2',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'doc', 'plugin' } ,
}
