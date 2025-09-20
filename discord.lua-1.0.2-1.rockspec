package = "discord.lua"
version = "1.0.2-1"
source = {
    url = "https://github.com/nyxen5620/discord.lua/archive/refs/tags/v1.0.2.zip"
}

description = {
    summary = "Biblioteca Lua para criar bots do Discord com suporte a Components v2",
    homepage = "https://github.com/nyxen5620/discord.lua",
    license = "Apache 2.0",
    detailed = [[
        discord.lua é uma biblioteca completa para programadores Lua criarem bots do Discord.
        Suporta mensagens, embeds, botões (Components v2), select menus, modais e reconexão automática.
    ]]
}

dependencies = {
    "luasocket >= 3.0",
    "lua-cjson >= 2.1",
    "lua-websockets >= 0.4"
}

build = {
    type = "builtin",
    modules = {
        ["discord"] = "discord/init.lua",
        ["discord.gateway"] = "discord/gateway.lua",
        ["discord.rest"] = "discord/rest.lua",
        ["discord.events"] = "discord/events.lua",
        ["discord.components"] = "discord/components.lua"
    }
}
