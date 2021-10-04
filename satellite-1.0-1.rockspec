package = "satellite"
version = "1.0-1"

source = {
   url = "git+ssh://git@github.com/pvpsnvz/satellite",
   branch = "main",
   tag = "v1.0-1"
}

description = {
   summary = "VK API SDK for Lua.",
   homepage = "https://github.com/pvpsnvz/satellite",
   license = "MIT",
   maintainer = "pvpsnvz<pvpsnvz@gmail.com>"
}

dependencies = {
  "lua >= 5.1, <= 5.4",
  "http",
  "json-lua"
}

build = {
   type = "builtin",
   modules = {
      ["satellite.rest_client"] = "satellite/rest_client.lua",
      ["satellite.vk"] = "satellite/vk.lua",
      ["satellite.vk_longpoll"] = "satellite/vk_longpoll.lua"
   }
}
