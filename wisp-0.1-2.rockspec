package = "wisp"
version = "0.1-2"
source = {
   url = "git+https://github.com/merterkocfinkoto/wisp-lua-package.git",  -- veya yerel dizin
}
description = {
   summary = "A simple hello world Lua module",
   detailed = "This package prints 'Hello, World!' using Lua.",
   homepage = "https://github.com/merterkocfinkoto/wisp-lua-package",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["wisp"] = "wisp.lua",
      ["engine"] = "src/engine.lua",
      ["require_components"] = "src/require_components.lua",
      ["root"] = "src/root.lua"
   }
}
