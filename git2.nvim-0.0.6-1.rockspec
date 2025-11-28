local git_ref = '0.0.6'
local modrev = '0.0.6'
local specrev = '1'

local repo_url = 'https://github.com/Freed-Wu/git2.nvim'

rockspec_format = '3.0'
package = 'git2.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '[WIP!!!] Use luagit2 to realize a :Git in neovim',
  detailed = '',
  labels = { 'libgit2', 'lua', 'neovim', 'vim' } ,
  homepage = 'https://luarocks.org/modules/Freed-Wu/git2.nvim',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'mega.argparse', 'vim', 'lua-git2-tmp' }

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'git2.nvim-' .. '0.0.6',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = {'scripts', 'plugin'},
  install = {
    bin = {
      git2 = 'bin/git2',
    },
    conf = {
      ['..'] = 'shell.nix',
    },
  },
}
