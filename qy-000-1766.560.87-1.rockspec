package = "qy-000"
version = "1766.560.87-1"
source = {
   url = "file:///Users/mojun/Downloads/backlinks/packages/qy-000-1766.560.87.tar.gz",
   dir = "qy-000"
}
description = {
   summary = "A lightweight utility library for managing and generating dynamic links with tracking parameters.",
   detailed = [[
A lightweight utility library for managing and generating dynamic links with tracking parameters.
Perfect for marketing campaigns with UTM tracking, dynamic link generation, and analytics.
   ]],
   homepage = "https://example.com",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["qy-000"] = "src/init.lua"
   }
}
