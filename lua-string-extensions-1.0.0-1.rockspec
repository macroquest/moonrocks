package = "lua-string-extensions"
version = "1.0.0-1"
source = {
  url = "https://github.com/michaelkargl/lua-string-extensions/archive/refs/tags/v1.0.0.tar.gz",
  dir = "lua-string-extensions-1.0.0"
}
description = {
   summary = "Extension methods to the lua string type",
   detailed = [[
      Provides common string manipulation methods like:
      * startsWith
      * trimStart
   ]],
   homepage = "https://github.com/michaelkargl/lua-string-extensions/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "busted >= 2.2.0"
}
build = {
   type = "builtin",
   modules = {
      ["lua-string-extensions"] = "string_extensions.lua"
   }
}
