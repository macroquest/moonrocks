package = "luar"
version = "0.1-0"
source = {
   url = "git+https://github.com/rousbound/luar.git"
}
description = {
   summary = "",
   detailed = [[
   ]],
   license = "MIT",
   homepage = ""
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      luar = "luar.lua",
   }
}
