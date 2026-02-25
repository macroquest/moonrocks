rockspec_format = "3.0"
package = "ai-twerk-video-generator-2"
version = "1766.980.498-1"
source = {
   url = "git+https://github.com/qy-upup/ai-twerk-video-generator-2.git",
   tag = "v1766.980.498"
}
description = {
   summary = "High-performance AI ai twerk video generator 2 for supermaker.ai/video/ai-twerk-video-generator/",
   detailed = [[
      luarocks install ai-twerk-video-generator-2
      local twerk = require("ai-twerk-video-generator-2")
      local video_config = {
      duration = 10, -- Video duration in seconds
      resolution = "720p",
      background = "beach",
      character = "dancer_01",
      music = "pop_track_01"
      }
      local video_path = twerk.generate_video(video_config)
      print("Video generated at:", video_path)
      local twerk = require("ai-twerk-video-generator-2")
      local choreography = {
      "twerk_01",
      "shake_02",
   ]],
   homepage = "https://supermaker.ai/video/ai-twerk-video-generator/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
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
