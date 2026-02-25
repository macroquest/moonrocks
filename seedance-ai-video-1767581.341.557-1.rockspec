rockspec_format = "3.0"
package = "seedance-ai-video"
version = "1767581.341.557-1"
source = {
   url = "git+https://github.com/qy-upup/seedance-ai-video.git",
   tag = "v1767581.341.557"
}
description = {
   summary = "High-performance AI seedance ai video for supermaker.ai/video/seedance-ai-video/",
   detailed = [[
      luarocks install seedance-ai-video
      local video = require("seedance-ai-video")
      local analysis_result = video.analyze("path/to/your/video.mp4")
      if analysis_result then
      print("Video analysis successful:")
      print(analysis_result.summary) -- Access analysis details
      else
      print("Video analysis failed: " .. analysis_result.error)
      end
      local video = require("seedance-ai-video")
      local objects = video.detect_objects("path/to/your/video.mp4")
      if objects then
      print("Objects detected in video:")
      for i, obj in ipairs(objects) do
      print(string.format("Object %d: %s at time %f", i, obj.label, obj.timestamp))
   ]],
   homepage = "https://supermaker.ai/video/seedance-ai-video/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "seedance", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["seedance-ai-video"] = "src/init.lua"
   }
}
