package = "supermaker-ai-image-master"
version = "1766.560.146-1"
source = {
   url = "file:///Users/mojun/Downloads/backlinks/packages/supermaker-ai-image-master-1766.560.146.tar.gz",
   dir = "supermaker-ai-image-master"
}
description = {
   summary = "A lightweight utility library for managing and generating dynamic links with tracking parameters.",
   detailed = [[
A lightweight utility library for managing and generating dynamic links with tracking parameters.
Perfect for marketing campaigns with UTM tracking, dynamic link generation, and analytics.
   ]],
   homepage = "https://supermaker.ai/image/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["supermaker-ai-image-master"] = "src/init.lua"
   }
}
