package = "tty"
version = "0.1.0-1"

source = {
  url = "git://github.com/luamod/tty",
}

description = {
  summary = "Cross-platform Lua bindings for basic terminal inspection",
  detailed = [[
Small cross-platform Lua bindings for checking whether a file descriptor is a
TTY and for reading terminal dimensions.
  ]],
  homepage = "https://github.com/luamod/tty",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    tty = {
      sources = { "tty.c" },
    },
  },
}
