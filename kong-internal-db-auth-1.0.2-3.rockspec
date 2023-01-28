package = "kong-internal-db-auth"
version = "1.0.2-3"
source = {
   url = "git+https://github.com/wisdom-oss/kong-internal-db-auth.git"
}
description = {
   homepage = "https://github.com/wisdom-oss/kong-internal-db-auth",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-internal-db-auth.handler"] = "kong/plugins/kong-internal-db-auth/handler.lua",
      ["kong.plugins.kong-internal-db-auth.schema"] = "kong/plugins/kong-internal-db-auth/schema.lua"
   }
}
