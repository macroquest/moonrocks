package = "coro-channel"
version = "3.0-3"
source = {
   url = "git+https://www.github.com/code-nuage/coro-channel",
   tag = "3.0-3"
}
description = {
   homepage = "https://www.github.com/code-nuage/coro-channel",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["coro-channel"] = "coro-channel.lua"
   }
}
