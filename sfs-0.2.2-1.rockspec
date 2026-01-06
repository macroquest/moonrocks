package = "sfs"
version = "0.2.2-1"
source = {
   url = "https://codeberg.org/sewbacca/sfs/archive/v0.2.2.zip",
   dir = "sfs"
}
description = {
   homepage = "https://codeberg.org/sewbacca/sfs",
   license = "MIT"
}
dependencies = {
   "luafilesystem ~> 1"
}
build = {
   type = "builtin",
   modules = {
      sfs = "lua/sfs.lua"
   }
}
