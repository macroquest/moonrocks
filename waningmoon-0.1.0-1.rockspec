package = "waningmoon"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/EricksonLOOP/waningmoon.git",
   tag = "v0.1.0"
}
description = {
   summary = "WaningMoon - A modular backend framework for Lua inspired by NestJS and Spring Boot",
   detailed = [[
WaningMoon is a complete backend framework for Lua that brings modern 
architectural patterns from NestJS and Spring Boot to Lua development.
It features:

- Modular architecture with modules, controllers, and services
- Dependency Injection container with 3 scopes (singleton, transient, request)
- Decorators/annotations for classes and methods
- HTTP server with LuaSocket
- Built-in middlewares (CORS, Logger, BodyParser, Auth, RateLimit, SecurityHeaders)
- Request/Response objects
- Router with path parameters
- Metadata system for introspection
- Complete example application with CRUD API
]],
   homepage = "https://github.com/EricksonLOOP/waningmoon",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luasocket"
}
build = {
   type = "builtin",
   modules = {
      ["waningmoon.waningmoon"] = "waningmoon/waningmoon.lua",
      ["waningmoon.core.metadata"] = "waningmoon/core/metadata.lua",
      ["waningmoon.core.container"] = "waningmoon/core/container.lua",
      ["waningmoon.core.decorators"] = "waningmoon/core/decorators.lua",
      ["waningmoon.core.router"] = "waningmoon/core/router.lua",
      ["waningmoon.core.server"] = "waningmoon/core/server.lua",
      ["waningmoon.core.request"] = "waningmoon/core/request.lua",
      ["waningmoon.core.response"] = "waningmoon/core/response.lua",
      ["waningmoon.core.middleware"] = "waningmoon/core/middleware.lua",
      ["waningmoon.core.module_loader"] = "waningmoon/core/module_loader.lua",
      ["waningmoon.core.utils"] = "waningmoon/core/utils.lua",
      ["waningmoon.core.guards"] = "waningmoon/core/guards.lua",
      ["waningmoon.core.interceptors"] = "waningmoon/core/interceptors.lua",
      ["waningmoon.core.pipes"] = "waningmoon/core/pipes.lua"
   }
}
