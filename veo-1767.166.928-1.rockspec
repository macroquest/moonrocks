rockspec_format = "3.0"
package = "veo"
version = "1767.166.928-1"
source = {
   url = "git+https://github.com/qy-upup/veo.git",
   tag = "v1767.166.928"
}
description = {
   summary = "High-performance AI veo for supermaker.ai/video/veo/",
   detailed = [[
      luarocks install veo
      local veo = require("veo")
      local video = veo.open("path/to/your/video.mp4")
      if video then
      print("Filename:", video.filename)
      print("Width:", video.width)
      print("Height:", video.height)
      print("Duration:", video.duration) -- in seconds
      print("Frame Rate:", video.frame_rate)
      video:close()
      else
      print("Error opening video file.")
      end
      local veo = require("veo")
      local video = veo.open("path/to/your/video.mp4")
   ]],
   homepage = "https://supermaker.ai/video/veo/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "veo", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["veo"] = "src/init.lua"
   }
}
