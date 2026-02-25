package = "coro-spawn"
version = "3.0-3"
source = {
   url = "git+https://www.github.com/code-nuage/coro-spawn",
   tag = "3.0-3"
}
description = {
   homepage = "https://www.github.com/code-nuage/coro-spawn",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luv >= 1.51.0-1",
   "coro-channel >= 3.0-3"
}
build = {
   type = "builtin",
   modules = {
      ["coro-spawn"] = "coro-spawn.lua"
   }
}
