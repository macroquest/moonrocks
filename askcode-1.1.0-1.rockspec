local git_ref = 'v1.1.0'
local modrev = '1.1.0'
local specrev = '1'

local repo_url = 'https://github.com/e3oroush/askCode'

rockspec_format = '3.0'
package = 'askcode'
version = modrev ..'-'.. specrev

description = {
  summary = 'An AI-powered assistant for Neovim that connects to services like Gemini and Amazon Q to help you understand and write code directly in your editor.',
  detailed = '',
  labels = { 'agent', 'amazonqcli', 'gemini-cli', 'neovim' } ,
  homepage = 'https://github.com/e3oroush/askCode',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'askCode-' .. '1.1.0',
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
