package = "lua-docs-generator"
version = "1.1-1"
source = {
   url = "git+https://codeberg.org/TotoEnF5/lua-docs-generator.git",
   tag = "v1.1"
}
description = {
   summary = "A documentation generator for Lua source code.",
   detailed = [[
      A documentation generator for Lua source code that uses annotations in comments to build a Markdown document.
      The annotations used are those defined by the Lua Language Server.
   ]],
   homepage = "https://codeberg.org/TotoEnF5/lua-docs-generator",
   license = "CC BY 4.0"
}
build = {
   type = "builtin",
   modules = {
      init = "init.lua",
   },
   install = {
      bin = {
         ["lua-docs-generator"] = "bin/lua-docs-generator"
      }
   }
}
