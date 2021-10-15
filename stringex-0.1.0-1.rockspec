rockspec_format = "3.0"
package = "stringex"
version = "0.1.0-1"
source = {
   url = "git+ssh://git@github.com/mah0x211/lua-stringex.git",
   tag = "v0.1.0"
}
description = {
   summary = "additional features to the string module.",
   homepage = "https://github.com/mah0x211/lua-stringex",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      stringex = "stringex.lua",
      ["stringex.has"] = "lib/has.lua",
      ["stringex.split"] = "lib/split.lua",
      ["stringex.trim"] = "lib/trim.lua"
   }
}
