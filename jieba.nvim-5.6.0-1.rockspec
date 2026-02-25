local git_ref = '5.6.0'
local modrev = '5.6.0'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/jieba.nvim'

rockspec_format = '3.0'
package = 'jieba.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '基于cppjieba的neovim中文词跳转',
  detailed = '',
  labels = { 'cppjieba', 'jieba', 'neovim', 'vim', 'vim-plugin', 'xmake' } ,
  homepage = 'https://jieba-nvim.readthedocs.io/',
  license = 'GPL-3.0'
}

build_dependencies = { "luanativeobjects" }

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'jieba.nvim-' .. '5.6.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = {'plugin'},
  -- https://github.com/xmake-io/luarocks-build-xmake/pull/3
  install = {
    conf = {
      ['..'] = 'shell.nix',
      ['../scripts/update.sh'] = 'scripts/update.sh',
    },
  },
}
