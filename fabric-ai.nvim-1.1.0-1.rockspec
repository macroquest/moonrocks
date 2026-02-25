local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/PhantomYdn/fabric-ai.nvim'

rockspec_format = '3.0'
package = 'fabric-ai.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neovim plugin for Fabric AI\'s 220+ text processing patterns',
  detailed = [[
A Neovim plugin that integrates Fabric AI's 220+ text processing patterns
directly into your editor. Features include visual selection processing,
URL processing (YouTube/web), streaming output, Telescope integration
with pattern preview, and flexible output actions.]],
  labels = { 'neovim', 'neovim-plugin', 'ai', 'fabric', 'text-processing' } ,
  homepage = 'https://github.com/PhantomYdn/fabric-ai.nvim',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'fabric-ai.nvim-' .. '1.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc', 'plugin' } ,
}
