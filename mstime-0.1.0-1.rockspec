package = "mstime"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/luamod/mstime",
}

description = {
  summary = "Current Unix time in milliseconds",
  detailed = [[
Current Unix time in milliseconds.
  ]],
  homepage = "https://github.com/luamod/mstime",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["mstime"] = {
      sources = { "mstime.c" },
    },
  },
}
