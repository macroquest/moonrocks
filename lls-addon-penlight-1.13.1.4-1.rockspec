rockspec_format = "3.0"
package = "lls-addon-penlight"
version = "1.13.1.4-1"
source = {
   url = "git+https://github.com/goldenstein64/pl-definitions",
   tag = "v1.13.1.4"
}
description = {
   summary = "LuaLS type definitions for Penlight",
   homepage = "https://github.com/goldenstein64/pl-definitions",
   license = "MIT"
}
dependencies = {
   "lls-addon-luafilesystem"
}
build = {
   type = "lls-addon"
}
