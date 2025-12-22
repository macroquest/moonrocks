local git_ref = 'cbda4448f1f7227989fc9d024dfc3cdf96d8c52b'
local modrev = '0.22.21'
local specrev = '1'

local repo_url = 'https://github.com/rcasia/neotest-java'

rockspec_format = '3.0'
package = 'neotest-java'
version = modrev ..'-'.. specrev

description = {
  summary = 'Neotest adapter for Java.',
  detailed = '',
  labels = { 'java', 'junit', 'lua', 'neotest', 'neovim' } ,
  homepage = 'https://github.com/rcasia/neotest-java',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1', 'neotest', 'plenary.nvim', 'nvim-nio', 'tree-sitter-java', 'nvim-dap', 'nvim-dap-ui' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'neotest-java-' .. 'cbda4448f1f7227989fc9d024dfc3cdf96d8c52b',
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
