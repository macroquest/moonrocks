local git_ref = '97a1b000d706c69c45f9ff717b37fa3680fb364c'
local modrev = '0.23.0'
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
  dir = 'neotest-java-' .. '97a1b000d706c69c45f9ff717b37fa3680fb364c',
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
