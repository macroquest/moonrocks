rockspec_format = "3.0"
package = "sotavideo.ai"
version = "1767.90.300-1"
source = {
   url = "git+https://github.com/qy-upup/sotavideo.ai.git",
   tag = "v1767.90.300"
}
description = {
   summary = "High-performance AI sotavideo.ai for sotavideo.ai/",
   detailed = [[
      luarocks install sotavideo-ai
      local sotavideo = require("sotavideo.ai")
      local input_video = "/path/to/input.mp4"
      local output_video = "/path/to/output.avi"
      local options = {
      codec = "libx264",
      resolution = "720p",
      bitrate = "2000k"
      }
      local success, err = sotavideo.transcode(input_video, output_video, options)
      if success then
      print("Video transcoded successfully!")
      else
      print("Error transcoding video: " .. err)
      end
   ]],
   homepage = "https://sotavideo.ai/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "sotavideo.ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sotavideo.ai"] = "src/init.lua"
   }
}
