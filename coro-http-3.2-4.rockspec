package = "coro-http"
version = "3.2-4"
source = {
   url = "git+https://www.github.com/code-nuage/coro-http",
   tag = "3.2-4"
}
description = {
   homepage = "https://www.github.com/code-nuage/coro-http",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "coro-net >= 3.2-1",
   "http-codec >= 3.0-8"
}
build = {
   type = "builtin",
   modules = {
      ["coro-http"] = "coro-http.lua"
   }
}
