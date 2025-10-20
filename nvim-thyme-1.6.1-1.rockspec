local git_ref = '7882323da53ce5d3e928b43c2911c3ceea73c5c0'
local modrev = '1.6.1'
local specrev = '1'

local repo_url = 'https://github.com/aileot/nvim-thyme'

rockspec_format = '3.0'
package = 'nvim-thyme'
version = modrev ..'-'.. specrev

description = {
  summary = '🕛 Zero-overhead Fennel JIT compiler at runtime of Neovim with safety rollbacks',
  detailed = '',
  labels = { 'neovim', 'fennel' } ,
  homepage = 'https://github.com/aileot/nvim-thyme',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'fennel' } 

test_dependencies = { 'vusted' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-thyme-' .. '7882323da53ce5d3e928b43c2911c3ceea73c5c0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'queries' } ,
}
