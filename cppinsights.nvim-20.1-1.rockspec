local git_ref = '20.1'
local modrev = '20.1'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/cppinsights.nvim'

rockspec_format = '3.0'
package = 'cppinsights.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim extension for C++ Insights',
  detailed = '',
  labels = { 'cppinsights', 'neovim', 'vim', 'xmake' } ,
  homepage = 'https://cppinsights-nvim.readthedocs.io',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cppinsights.nvim-' .. '20.1',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = { 'ftplugin' } ,
  install = {
    conf = {
      ['..'] = 'shell.nix',
      ['../scripts/update.sh'] = 'scripts/update.sh',
    },
  },
}
