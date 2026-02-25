rockspec_format = "3.0"
package = "pnpoly.lua"
version = "1.0.0-0"
source = {
   url = "git://github.com/BlackMATov/pnpoly.lua",
   tag = "v1.0.0",
}
description = {
   homepage = "https://github.com/BlackMATov/pnpoly.lua",
   summary = "Point Inclusion in Polygon Test",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      pnpoly = "pnpoly.lua",
   }
}
