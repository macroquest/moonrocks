local git_ref = '0.0.3'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/rimeinn/ime.nvim'

rockspec_format = '3.0'
package = 'ime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'auto switch IME for neovim. 如何在 NeoVim 中方便的输入汉字（CJKV characters）',
  detailed = '',
  labels = { 'fcitx5', 'ibus', 'lua', 'neovim', 'rime', 'vim-plugin' } ,
  homepage = 'https://ime-nvim.readthedocs.io/',
  license = 'GPL-3.0'
}

-- https://github.com/stefano-m/lua-dbus_proxy/issues/14
dependencies = { 'dbus_proxy >= 0.10.4', 'lua-cjson', 'luafilesystem', 'ime' }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'ime.nvim-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' },
  install = {
      conf = {
          ['..'] = 'shell.nix',
          ['../scripts/update.sh'] = 'scripts/update.sh',
      },
  }
}
