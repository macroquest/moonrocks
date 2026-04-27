package = "mtime"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/luamod/mtime",
}

description = {
  summary = "Small cross-platform monotonic time helper for Lua",
  detailed = [[
Small cross-platform monotonic time helper for Lua.
  ]],
  homepage = "https://github.com/luamod/mtime",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mtime"] = {
      sources = { "mtime.c" },
    },
  },
}
