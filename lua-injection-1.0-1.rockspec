package = "lua-injection"
version = "1.0-1"
source = {
    url = "git://github.com/jigordev/lua-injection.git",
    branch = "main",
}
description = {
    summary = "A lightweight and flexible dependency injection container for Lua.",
    detailed = [[
      A lightweight and flexible Dependency Injection Container for Lua.  
      This library allows you to register and manage your application’s dependencies in a centralized way, supporting singletons, lazy singletons, and factories with automatic dependency resolution.  
    ]],
    license = "MIT",
    homepage = "https://github.com/jigordev/lua-injection",
    maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["injection"] = "src/init.lua",
    },
}
