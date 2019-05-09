package = "kong-url-rewrite"
version = "1.0.2-1"
source = {
   url = "git@github.com/linhdangduy/kong-url-rewrite",
   tag = "v1.0.0"
}
description = {
  summary = "KongAPI Gateway middleware plugin for url-rewrite purposes.",
  detailed = [[
      Depend on request url and response from introspection endpoint of mfid
      to rewrite request url to appropirate url.
   ]]
}
dependencies = {
  "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
    ["kong.plugins.kong-url-rewrite.handler"] = "url-rewrite/handler.lua",
    ["kong.plugins.kong-url-rewrite.schema"] = "url-rewrite/schema.lua"
   }
}
