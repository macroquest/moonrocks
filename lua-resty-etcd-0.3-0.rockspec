package = "lua-resty-etcd"
version = "0.3-0"
source = {
   url = "git://github.com/iresty/lua-resty-etcd",
   tag = "v0.3"
}
description = {
   summary = "Nonblocking Lua etcd driver library for OpenResty",
   homepage = "https://github.com/iresty/lua-resty-etcd",
   license = "Apache License 2.0",
   maintainer = "Yuansheng Wang <membphis@gmail.com>"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.etcd"] = "lib/resty/etcd.lua",
      ["resty.etcd.typeof"] = "lib/resty/etcd/typeof.lua"
   }
}
