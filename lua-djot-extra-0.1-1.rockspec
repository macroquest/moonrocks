package = "lua-djot-extra"
version = "0.1-1"
source = {
   url = "git://github.com/soapdog/lua-djot-extra",
   tag = "v0.1"
}
description = {
   homepage = "https://github.com/soapdog/lua-djot-extra",
   license = "MIT",
   summary = "A rock that is able to process djot files with metadata"
}
dependencies = {
   "lua >= 5.1",
   "djot",
   "yaml"
}
build = {
   type = "builtin",
   modules = {
        djot_extra = "djot_extra.lua"
   }
}
