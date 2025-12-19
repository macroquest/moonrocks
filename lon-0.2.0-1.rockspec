---@diagnostic disable: lowercase-global
package = "lon"
version = "0.2.0-1"
source = {
  url = "git+https://gitlab.com/lua_rocks/lon.git",
  tag = "v0.2.0"
}

description = {
  summary = "Lua-Object-Notation (lon)",
  detailed = [[
  A Lua library for serializing and deserializing lua-tables into strings and back
  ]],
  homepage = "https://gitlab.com/lua_rocks/lon",
  license = "MIT"
}

dependencies = {
  'lua >= 5.1',
}

build = {
  type = "builtin",
  modules = {
    lon = "src/lon.lua"
  }
}
