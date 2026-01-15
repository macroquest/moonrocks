package = "coro-wrapper"
version = "3.1-0"
source = {
   url = "git+https://www.github.com/code-nuage/coro-wrapper",
   tag = "3.1-0"
}
description = {
   homepage = "https://www.github.com/code-nuage/coro-wrapper",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["coro-wrapper"] = "coro-wrapper.lua"
   }
}
