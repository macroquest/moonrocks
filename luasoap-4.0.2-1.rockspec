package = "luasoap"
version = "4.0.2-1"

source = {
   url="https://github.com/tomasguisasola/luasoap/archive/4.0.2.tar.gz",
   md5="a222bbe604cd72b068272ad8eee44fd2",
   dir="luasoap-4.0.2",
}

description = {
   summary = "Support for SOAP",
   detailed = "LuaSOAP provides a very simple API that convert Lua tables to and from XML documents",
   homepage = "http://tomasguisasola.github.io/luasoap/",
   license = "MIT/X11",
}

dependencies = {
   "lua >= 5.0",
   "luaexpat >= 1.1.0-3",
   "luasocket >= 2.0.2-1",
   "http-digest >= 1.2.2-1",
}

build = {
   type = "builtin",
   modules = {
      soap  = "src/soap.lua",
      ["soap.server"] = "src/server.lua",
      ["soap.client"] = "src/client.lua",
      ["soap.wsdl"] = "src/wsdl.lua",
   },
   copy_directories = { "doc", "tests", },
}

