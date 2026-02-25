local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/ravsii/nvim-dap-envfile'

rockspec_format = '3.0'
package = 'nvim-dap-envfile'
version = modrev ..'-'.. specrev

description = {
  summary = 'Support for envFile expanding for nvim-dap configurations',
  detailed = '',
  labels = { 'dap', 'debugging', 'neovim', 'neovim-configuration', 'neovim-plugin', 'neovim-plugin-lua' } ,
  homepage = 'https://github.com/ravsii/nvim-dap-envfile',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'nvim-dap-envfile-' .. '0.2.0',
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
