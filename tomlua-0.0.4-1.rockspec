local git_ref = 'v0.0.4'
local modrev = '0.0.4'
local specrev = '1'

local repo_url = 'https://github.com/BirdeeHub/tomlua'

rockspec_format = '3.0'
package = 'tomlua'
version = modrev ..'-'.. specrev

description = {
  summary = 'Speedy toml parsing for lua, implemented in C',
  detailed = [[
Speedy toml parsing for lua, implemented in C 
for use in hot-path or startup-time parsing of toml files.]],
  labels = { },
  homepage = 'https://github.com/BirdeeHub/tomlua',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'tomlua-' .. '0.0.4',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = "make",
  copy_directories = { },
  build_variables = {
    LUA_INCDIR="$(LUA_INCDIR)",
  },
  install_variables = {
    LIBDIR="$(LIBDIR)",
  },
}
