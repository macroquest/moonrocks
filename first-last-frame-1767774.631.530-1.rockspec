rockspec_format = "3.0"
package = "first-last-frame"
version = "1767774.631.530-1"
source = {
   url = "git+https://github.com/qy-upup/first-last-frame.git",
   tag = "v1767774.631.530"
}
description = {
   summary = "High-performance AI first last frame for supermaker.ai/video/first-last-frame/",
   detailed = [[
      luarocks install first-last-frame
      local flf = require("first-last-frame")
      local flf = require("first-last-frame")
      local video_path = "/path/to/your/video.mp4"
      local first_frame, last_frame = flf.get_first_and_last_frames(video_path)
      if first_frame and last_frame then
      print("First Frame:", first_frame)
      print("Last Frame:", last_frame)
      else
      print("Error: Could not extract frames.")
      end
      local flf = require("first-last-frame")
      local video_path = "/path/to/your/video.mp4"
      local options = { method = "fast" } -- Use a faster, potentially less accurate method
      local first_frame, last_frame = flf.get_first_and_last_frames(video_path, options)
   ]],
   homepage = "https://supermaker.ai/video/first-last-frame/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "first", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["first-last-frame"] = "src/init.lua"
   }
}
