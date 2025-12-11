package = "my_module"
version = "1.0.0"
source = {
   url = "file://D:/DevTool/Lua/5.4/lua_modules/src"
}
description = {
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.3"
}
build = {
   type = "builtin",
   modules = {
        ["my_module"] = "src/my_module.lua"
    }
}
