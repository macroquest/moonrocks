local git_ref = '74e4a4da30b84aa1bafe9c3b4a6c2434b31e31cd'
local modrev = '2.3.10'
local specrev = '1'

local repo_url = 'https://github.com/vyfor/cord.nvim'

rockspec_format = '3.0'
package = 'cord.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = '🚀 Discord Rich Presence for Neovim',
  detailed = [[
Meet the future of rich presence with Cord, the most extensible Discord Rich Presence plugin for Neovim, powered by Rust. 
Cord offers a wide range of customization options allowing you to create custom and dynamic experiences that adapt to your needs.
The possibilities are endless, and the only limit is your creativity!]],
  labels = { 'cord', 'cord-nvim', 'discord', 'discord-rich-presence', 'linux', 'lua', 'macos', 'neovim', 'neovim-plugin', 'neovim-plugins', 'nix', 'nvim', 'plugin', 'rich-presence', 'rpc', 'rust', 'windows' } ,
  homepage = 'https://luarocks.org/modules/vyfor/cord.nvim',
  license = 'Apache-2.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'cord.nvim-' .. '74e4a4da30b84aa1bafe9c3b4a6c2434b31e31cd',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'plugin' } ,
}
