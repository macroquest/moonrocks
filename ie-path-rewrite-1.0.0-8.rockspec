package = "ie-path-rewrite"
version = "1.0.0-8"
source = {
   url = "git+ssh://git@bitbucket.globalx.com.au:7999/gia/ie-path-rewrite.git",
   tag = "v1.0.0"
}
description = {
   homepage = "",
   license = "unlicensed"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ie-path-rewrite.handler"] = "handler.lua",
      ["kong.plugins.ie-path-rewrite.schema"] = "schema.lua"
   }
}
