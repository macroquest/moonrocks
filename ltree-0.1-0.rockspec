package = "ltree"
version = "0.1-0"
source = {
   url = "git+https://www.github.com/code-nuage/ltree.git",
   tag = "v0.1"
}
description = {
   homepage = "https://www.github.com/code-nuage/ltree",
   license = "MIT"
}
dependencies = {
   "luafilesystem >= 1.8.0-1",
   "colorize >= 0.1-0"
}
build = {
   type = "builtin",
   modules = {
      ltree = "src/main.lua"
   },
   install = {
      bin = {
         ["ltree"] = "bin/ltree.lua"
      }
   }
}

