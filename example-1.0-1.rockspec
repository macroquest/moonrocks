package = "example"
version = "1.0-1"
source = {
  url = "git+https://github.com/dr-montasir/example-lua-pkg.git"
}
description = {
  summary = "Project example that depends on mytestpkg and luasocket",
  detailed = "Sample project demonstrating dependency management.",
  homepage = "https://github.com/dr-montasir/example-lua-pkg",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1",
  "luasocket >= 3.0-20230509",
  "mytestpkg >= 1.0"
}
build = {
   type = "builtin",
   modules = {
    example = 'main.lua',
    ["src.a"] = 'src/a.lua',
    ["src.m"] = 'src/m.lua'
   }
}