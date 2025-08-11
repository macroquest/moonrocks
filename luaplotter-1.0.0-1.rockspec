package = "luaplotter"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/zeykatecool/luaplotter.git"
}
description = {
   summary = "Plotting library for Lua",
   detailed = "A simple and efficient plotting library written in pure Lua.",
   license = "MIT",
   homepage = "https://github.com/zeykatecool/luaplotter"
}
dependencies = {
   "lua >= 5.1",
   "bit32"
}
build = {
   type = "builtin",
   modules = {
      ["luaplotter"] = "src/luaplotter.lua",
      ["color"] = "src/color.lua",
      ["font"] = "src/font.lua",
      ["png"] = "src/png.lua"
   }
}