package = "supermaker-ai-video-downloader"
version = "1766.560.162-1"
source = {
   url = "file:///Users/mojun/Downloads/backlinks/packages/supermaker-ai-video-downloader-1766.560.162.tar.gz",
   dir = "supermaker-ai-video-downloader"
}
description = {
   summary = "A lightweight utility library for managing and generating dynamic links with tracking parameters.",
   detailed = [[
A lightweight utility library for managing and generating dynamic links with tracking parameters.
Perfect for marketing campaigns with UTM tracking, dynamic link generation, and analytics.
   ]],
   homepage = "https://supermaker.ai/video/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["supermaker-ai-video-downloader"] = "src/init.lua"
   }
}
