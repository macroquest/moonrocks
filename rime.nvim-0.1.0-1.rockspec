local git_ref = '0.1.0'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/rime.nvim'

rockspec_format = '3.0'
package = 'rime.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'ㄓ rime for neovim',
  detailed = '',
  labels = { 'lua', 'neovim', 'rime', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/rime.nvim',
  license = 'GPL-3.0'
}

build_dependencies = { "luanativeobjects" }

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'rime.nvim-' .. git_ref,
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'xmake',
  copy_directories = {'after', 'scripts'},
  -- https://github.com/xmake-io/luarocks-build-xmake/pull/3
  install = {
    conf = {
      ['..'] = 'shell.nix'
    },
  },
}
