package = "cbuf"
version = "0.0.1-2"
source = {
   url = "git+https://github.com/lengbing/cbuf.git",
   tag = "0.0.2"
}
description = {
   summary = "Simple C Buffer for Lua",
   homepage = "https://github.com/lengbing/cbuf",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
      cbuf = {
         sources = "cbuf.c"
      }
   }
}
