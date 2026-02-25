package = "coro-fs"
version = "2.2-5"
source = {
   url = "git+https://www.github.com/code-nuage/coro-fs",
   tag = "2.2-5"
}
description = {
   homepage = "https://www.github.com/code-nuage/coro-fs",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luv >= 1.51.0-1",
   "pathjoin >= 2.0-0"
}
build = {
   type = "builtin",
   modules = {
      ["coro-fs"] = "coro-fs.lua"
   }
}
