local git_ref = '1.22'
local modrev = git_ref
local specrev = '1'
local repo_url = 'https://github.com/Freed-Wu/tellenc.nvim'
rockspec_format = '3.0'
package = 'tellenc.nvim'
version = modrev ..'-'.. specrev
description = {
  summary = 'A neovim plugin to detect the encoding of a text file.',
  detailed = '',
  labels = { 'neovim', 'plugin', 'tellenc', 'vim' } ,
  homepage = 'https://tellenc-nvim.readthedocs.io',
  license = 'GPL-3.0'
}
build_dependencies = { "luanativeobjects" }
dependencies = { 'lua >= 5.1' } 
test_dependencies = { }
source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev
}
if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end
build = {
  type = 'xmake',
  copy_directories = {'scripts', 'plugin'},
  install = {
    conf = {
      ['..'] = 'shell.nix'
    },
  },
}
