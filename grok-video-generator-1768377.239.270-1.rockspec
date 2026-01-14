rockspec_format = "3.0"
package = "grok-video-generator"
version = "1768377.239.270-1"
source = {
   url = "git+https://github.com/gcPC0x/grok-video-generator.git",
   tag = "v1768377.239.270"
}
description = {
   summary = "High-performance AI grok video generator for supermaker.ai/blog/grok-ai-video-generator-the-ultimate-guide-to-creating-ai-videos-2025/",
   detailed = [[
      luarocks install grok-video-generator
      local video = require("grok-video-generator")
      local builder = video.Builder()
      builder:add_image("path/to/your/image.jpg", { duration = 5 }) -- Display image for 5 seconds
      builder:export("output.mp4") -- Export the video to a file
      local video = require("grok-video-generator")
      local builder = video.Builder()
      builder:add_video("path/to/your/video.mp4")
      builder:add_text("Hello, World!", {
      start_time = 2, -- Display from second 2
      duration = 3,  -- For 3 seconds
      position = { x = 0.5, y = 0.1 }, -- Center horizontally, 10% from the top
      font_size = 32,
      color = "white"
      })
   ]],
   homepage = "https://supermaker.ai/blog/grok-ai-video-generator-the-ultimate-guide-to-creating-ai-videos-2025/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "grok", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["grok-video-generator"] = "src/init.lua"
   }
}
