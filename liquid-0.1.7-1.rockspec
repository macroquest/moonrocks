rockspec_format = "1.1"
package = "liquid"
version = "0.1.7-1"
source = {
   url = "https://github.com/3scale/liquid-lua/archive/v0.1.7.tar.gz",
   md5 = "08bb81594865e2cc6c4d5a1173ffb47b",
   dir = "liquid-lua-0.1.7",
}
description = {
   summary = "A lua implementation of liquid for OpenResty platform.",
   detailed = "Since liquid markup language has no its official language specification document , liquid-lua adopts a classic lexer/parser/interpreter implementation approch and comes up with a strict error mode.",
   homepage = "https://github.com/chenxianyu2015/liquid-lua",
   license = "BSD-2-Clause"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["liquid"] = "lib/liquid.lua"
   }
}
