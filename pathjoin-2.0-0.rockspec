package = "pathjoin"
version = "2.0-0"
source = {
   url = "git+https://www.github.com/code-nuage/pathjoin",
   tag = "2.0-0"
}
description = {
   homepage = "https://www.github.com/code-nuage/pathjoin",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["pathjoin"] = "pathjoin.lua"
   }
}
