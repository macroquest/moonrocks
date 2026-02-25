rockspec_format = "3.0"
package = "sotavideo.ai"
version = "1767.87.973-1"
source = {
   url = "git+https://github.com/qy-upup/sotavideo.ai.git",
   tag = "v1767.87.973"
}
description = {
   summary = "High-performance AI sotavideo.ai for sotavideo.ai/",
   detailed = [[
      luarocks install sotavideo-ai
      local sotavideo = require("sotavideo.ai")
      -- Initialize with your API key (replace with your actual key)
      sotavideo.init("YOUR_API_KEY")
      local result = sotavideo.analyze_video("path/to/your/video.mp4")
      if result.success then
      print("Analysis complete:")
      print("Number of faces detected:", result.data.face_count)
      print("Objects detected:", table.concat(result.data.objects, ", "))
      else
      print("Analysis failed:", result.error)
      end
      local sotavideo = require("sotavideo.ai")
      sotavideo.init("YOUR_API_KEY")
      local thumbnail_path = sotavideo.generate_thumbnail("path/to/your/video.mp4", "path/to/output/thumbnail.jpg")
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
