package = "luaflask"
version = "0.1"
source = {
    url = "git://github.com/AmiRCandy/Luaflask.git"
}
description = {
    summary = "A Flask-inspired web framework for Lua",
    detailed = [[
        LuaFlask is a lightweight web framework for Lua inspired by Python's Flask.
        It provides routing, request/response handling, and basic templating.
    ]],
    homepage = "https://github.com/AmiRCandy/luaflask",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1",
    "lua-socket",
    "dkjson"
}
build = {
    type = "builtin",
    modules = {
        ["luaflask"] = "src/luaflask/__init__.lua",
        ["luaflask.app"] = "src/luaflask/app.lua",
        ["luaflask.router"] = "src/luaflask/router.lua",
        ["luaflask.response"] = "src/luaflask/response.lua",
        ["luaflask.request"] = "src/luaflask/request.lua",
        ["luaflask.utils"] = "src/luaflask/utils.lua",
        ["luaflask.templating"] = "src/luaflask/templating.lua"
    },
    install = {
        lua = {
            ["luaflask"] = "src/luaflask",
            ["."] = "src/init.lua"
        }
    }
}