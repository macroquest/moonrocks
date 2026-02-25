package = "anti-gravity-qy"
version = "1766.740.495-1"
source = {
   url = "git+https://github.com/qy-upup/Anti-gravity-qy.git",
   branch = "master"
}
description = {
   summary = "Professional integration for https://antigravity.google/",
   detailed = [[
Professional integration library for the https://antigravity.google/ ecosystem, providing robust and efficient utility functions.
   ]],
   homepage = "https://antigravity.google/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["anti-gravity-qy"] = "src/init.lua"
   }
}
