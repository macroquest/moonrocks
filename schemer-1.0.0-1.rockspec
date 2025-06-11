rockspec_format = "3.0"
package = "schemer"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/arthur-debert/schemer.git"
}
description = {
   summary = "A lightweight, expressive schema validation library for Lua.",
   detailed = [[
      Schemer is a focused yet powerful Lua library for validating data structures like configuration tables, API inputs, and user data. It provides rich validation features including type checking, constraints, enums, unions, cross-field validation, and custom validators. Designed for simplicity and expressiveness with comprehensive error reporting and data normalization capabilities.
   ]],
   homepage = "https://github.com/arthur-debert/schemer",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      schemer = "lua/schemer/init.lua",

   },
   copy_directories = {
      "docs"
   }
}
test_dependencies = {
   "busted >= 2.0.0",
   "luacov"
}
test = {
   type = "busted"
} 