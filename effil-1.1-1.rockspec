package = "effil"
version = "1.1-1"

source = {
    url = "gitrec+http://github.com/effil/effil",
    tag = "v1.1-1"
}

description = {
    summary  = "Multithreading library for Lua.",
    detailed = [[
       Effil is a lua module for multithreading support. It allows to spawn native threads and provides safe data exchange.
    ]],
    homepage = "https://github.com/effil/effil",
    license  = "MIT"
}

dependencies = {
    "lua >= 5.1", "luarocks-fetch-gitrec"
}

local function get_unix_build()
    local install_dir = "rockspeck-content"
    return {
        type = "cmake",
        variables = {
            CMAKE_BUILD_TYPE     = "Release",
            CMAKE_PREFIX_PATH    = "$(LUA_BINDIR)/..",
            CMAKE_INSTALL_PREFIX = install_dir,
            CMAKE_LIBRARY_PATH   = "$(LUA_LIBDIR)",
            LUA_INCLUDE_DIR      = "$(LUA_INCDIR)",
            BUILD_ROCK           = "yes"
        },
      install = {
          lib = { install_dir .. "/effil.so" }
      }
    }
end

build = {
    platforms = {
        linux = get_unix_build(),
        macosx = get_unix_build()
    }
}
