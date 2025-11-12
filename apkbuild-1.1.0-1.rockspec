rockspec_format = "3.0"
package = "apkbuild"
version = "1.1.0-1"
source = {
   url = "git+https://krei.lambdacreate.com/durrendal/lua-apkbuild",
   tag = "v1.1.0"
}
description = {
   summary = "A Lua library for parsing Alpine Linux APKBUILD files using LPEG.",
   detailed = [[
- Parse APKBUILD files into structured Lua tables
- Extract metadata fields (pkgname, pkgver, dependencies, etc.)
- Extract build function bodies (build, check, package, etc.)
- Handle multi-line arrays and quoted strings
- Support for all standard APKBUILD fields
]],
   homepage = "https://krei.lambdacreate.com/durrendal/lua-apkbuild",
   license = "0BSD"
}
dependencies = {
   "lua >= 5.1",
   "lpeg >= 1.0.2"
}
supported_platforms = { "linux" }
build = {
   type = "builtin",
   modules = {
      apkbuild = "src/apkbuild.lua"
   }
}
test = {
  type = "busted",
  flags = {
     "--verbose"
  },
}
