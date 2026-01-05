local git_ref = 'v0.2.0'
local modrev = '0.2.0'
local specrev = '1'

local repo_url = 'https://github.com/apechinsky/srplib.lua'

rockspec_format = '3.0'
package = 'srplib'
version = modrev ..'-'.. specrev

description = {
  summary = 'A collection of lightweight and highly specialized libraries for lua.',
  detailed = [[
A collection of lightweight and highly specialized libraries for lua.
Lua port of Java libraries https://github.com/apechinsky/srplib.]],
  labels = { },
  homepage = 'https://github.com/apechinsky/srplib.lua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'srplib.lua-' .. '0.2.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
