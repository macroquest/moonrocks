package = "http-codec"
version = "3.0-8"
source = {
   url = "git+https://www.github.com/code-nuage/http-codec",
   tag = "3.0-8"
}
description = {
   homepage = "https://www.github.com/code-nuage/http-codec",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["http-codec"] = "http-codec.lua"
   }
}
