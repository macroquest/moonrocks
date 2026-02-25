package = "ai-twerk-video-generator-2"
version = "1766.978.164-1"
source = {
   url = "git+https://github.com/qy-upup/ai-twerk-video-generator-2.git",
   tag = "v1766.978.164"
}
description = {
   summary = "Professional integration for https://supermaker.ai/video/ai-twerk-video-generator/",
   detailed = [[
Professional integration library for the https://supermaker.ai/video/ai-twerk-video-generator/ ecosystem, providing robust and efficient utility functions.
   ]],
   homepage = "https://supermaker.ai/video/ai-twerk-video-generator/",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-twerk-video-generator-2"] = "src/init.lua"
   }
}
