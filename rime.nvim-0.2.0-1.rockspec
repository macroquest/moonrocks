local git_ref = '0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/rimeinn/rime.nvim'

rockspec_format = '3.0'
package = 'rime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'ㄓ rime for neovim',
  detailed = '',
  labels = { 'lua', 'neovim', 'rime', 'vim', 'xmake' } ,
  homepage = 'https://rime-nvim.readthedocs.io/',
  license = 'GPL-3.0'
}

build_dependencies = { "luanativeobjects", "lua-cjson" }

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rime.nvim-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = {'after'},
  install = {
    bin = {
      rime = 'bin/rime'
    },
    conf = {
      ['..'] = 'shell.nix',
      ['../scripts/update.sh'] = 'scripts/update.sh',
    },
  },
}
