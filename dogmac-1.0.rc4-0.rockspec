package = "dogmac"
version = "1.0.rc4-0"
source = {
  url = "git+https://bitbucket.org/dogmalang/dogmac.git"
}
description = {
  summary = "Compiler for the Dogma language (dogmalang.com).",
  detailed = [[
    Compiler for the Dogma language (dogmalang.com).
  ]],
  homepage = "http://dogmalang.com",
  license = "",
  maintainer = "DogmaLang <hello@dogmalang.com>"
}
dependencies = {
  "lua >= 5.3",
  "dogma-core >= 1.0.rc4",
  "lua_cliargs >= 3.0",
  "lua-cjson = 2.1.0-1",
  "penlight >= 1.5"
}
build = {
  type = "builtin",
  modules = {
    ["dogmac.js"] = "src/js.lua",
    ["dogmac.checker"] = "src/checker.lua"
  },
  install = {
    bin = {
      dogmac = "bin/dogmac.lua"
    }
  }
}
