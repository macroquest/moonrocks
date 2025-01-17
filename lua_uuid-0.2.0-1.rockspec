package = "lua_uuid"
version = "0.2.0-1"
source = {
  url = "git@github.com:Mashape/lua-uuid.git",
  tag = "0.2.0"
}
description = {
  summary = "UUID generation",
  detailed = [[
    This is an utility that leverages libuuid to generate UUID strings
  ]],
  homepage = "https://github.com/Mashape/lua-uuid",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    ["lua_uuid"] = {
      sources = { "lua_uuid.c" },
      libraries = { "uuid" }
    }
  }
}
