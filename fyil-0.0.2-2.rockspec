package = "fyil"
version = "0.0.2-2"
source = {
    url = "git+https://codeberg.org/LoneC/lua-fyil.git",
    tag = "0.0.2"
}
description = {
    summary = "Load image pixels.",
    detailed = [[
        FYIL loads an image from disk and provides only necessary information about the file. 
        Due to simplicity, this library is essentially a wrapper of stb image and only contains very 
        bare-bones functions regarding the image. 
        The only dependency is stb, which is provided as a submodule in the repository.
    ]],
    homepage = "https://codeberg.org/LoneC/lua-fyil.git",
    license = "MIT"
}
build = {
   type = "make",
   makefile = "Rock.mk",
   build_dependencies = {
       "git"
   },
   build_variables = {
      CFLAGS="$(CFLAGS)",
      LIBFLAG="$(LIBFLAG)",
      LUA_LIBDIR="$(LUA_LIBDIR)",
      LUA_BINDIR="$(LUA_BINDIR)",
      LUA_INCDIR="$(LUA_INCDIR) -Istb",
      LUA="$(LUA)",
   },
   install_variables = {
      INST_PREFIX="$(PREFIX)",
      INST_BINDIR="$(BINDIR)",
      INST_LIBDIR="$(LIBDIR)",
      INST_LUADIR="$(LUADIR)",
      INST_CONFDIR="$(CONFDIR)"
   }
}
