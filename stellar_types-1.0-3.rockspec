package = "stellar_types"
version = "1.0-3"

source = {
   url = "git+https://github.com/SymonBezerra/stellar-types",
   tag = 'main'
}

description = {
   summary = "Table validation module for Lua",
   detailed = [[
      stellar_types is a C module that implements dynamic type creation,
      field validation, and nested type management in Lua. Inspired on Pydantic.
   ]],
   homepage = "https://github.com/SymonBezerra/stellar-types",
   license = "MIT"
}

dependencies = {
   "lua >= 5.3"
}

build = {
   type = "builtin",
   modules = {
      ["stellar_types"] = {
         sources = {
            "../stellar_types/stellar_types/stellar_types.c",
            "../stellar_types/stellar_types/staux.c",
            "../stellar_types/stellar_types/stm.c",
            "../stellar_types/stellar_types/st.c"
         },
         incdirs = { "../stellar_types/stellar_types" },
         defines = { "LUA_C89_NUMBERS" },
         libraries = {}
      }
   }
}
