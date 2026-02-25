package = "coro-net"
version = "3.2-1"
source = {
   url = "git+https://www.github.com/code-nuage/coro-net",
   tag = "3.2-1"
}
description = {
   homepage = "https://www.github.com/code-nuage/coro-net",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luv >= 1.51.0-1",
   "coro-channel >= 3.0-3",
   "coro-wrapper >= 3.1-0"
}
build = {
   type = "builtin",
   modules = {
      ["coro-net"] = "coro-net.lua"
   }
}
