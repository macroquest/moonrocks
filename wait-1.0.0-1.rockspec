package = "Wait"
version = "1.0.0-1"
source = {
   url = "https://github.com/somutoja/Wait/archive/refs/heads/main.zip"
}
description = {
   summary = "An easy to use Lua library that allows you to use a Wait/Sleep function in your project.",
   detailed = [[
      An easy to use Lua library that allows you to use a Wait/Sleep function in your project.
   ]],
   homepage = "https://github.com/somutoja/Wait/",
   license = "BSD-3-Clause"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      Wait = "Wait.lua"
   }
}