rockspec_format = "3.0"
package = "ai-twerk-video-generator-2"
version = "1766.980.68-1"
source = {
   url = "git+https://github.com/qy-upup/ai-twerk-video-generator-2.git",
   tag = "v1766.980.68"
}
description = {
   summary = "Professional integration for https://supermaker.ai/video/ai-twerk-video-generator/",
   detailed = [[
      bash
      luarocks install ai-twerk-video-generator-2
      lua
      local generator = require("ai-twerk-video-generator-2")
      local video_path = generator.generate({
        model = "default",
        duration = 10,
        music = "example.mp3"
      })
      print("Video generated at: " .. video_path)
   ]],
   homepage = "https://supermaker.ai/video/ai-twerk-video-generator/",
   license = "MIT",
   labels = { "api", "integration", "utility", "ai" }
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
