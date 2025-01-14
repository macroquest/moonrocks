package = "hfun"
version = "0.2.1-3"
source = {
   url = "git+https://github.com/HeinrichHartmann/luahfun.git",
   tag = "0.2.1"
}
description = {
   summary = "Fork of https://luafun.github.io/",
   license = "MIT/X11",
}
dependencies = {
    "lua"
}
build = {
    type = "builtin",
    modules = {
        hfun = "hfun.lua",
    },
}
