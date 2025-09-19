package = "my_module"
version = "2.0.0-1"
source = {
   url = "file://D:/DevTool/Lua/5.4/lua_modules/src"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.2"
}
build = {
   type = "builtin",
   modules = {
        ["my_module"] = "src/my_module.lua"
    }
}
