package = "lua-resty-logger-socket"
version = "1.0-0"
source = {
   url = "git://github.com/api7/lua-resty-logger-socket",
   branch = "v1.0",
}

description = {
   summary = "Raw-socket-based Logger Library for Nginx/Lua",
   homepage = "https://github.com/api7/lua-resty-logger-socket",
   license = "BSD license",
   maintainer = "Yuansheng Wang <membphis@gmail.com>"
}

build = {
   type = "builtin",
   modules = {
      ["resty.logger.socket"] = "lib/resty/logger/socket.lua",
   }
}
