package = "ifs"
version = "0.1"
source = {
   url = "git://github.com/AmiRCandy/ifs.git"
}
description = {
   summary = "Advanced cross-platform file system library for Lua",
   detailed = [[
      IFS provides comprehensive file system operations with
      a simple API, supporting both Windows and Unix systems.
   ]],
   license = "MIT",
   homepage = "https://github.com/AmiRCandy/ifs"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ifs"] = "src/ifs_lua.c"
   },
   copy_directories = {}
}