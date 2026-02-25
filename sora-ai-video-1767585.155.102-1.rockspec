rockspec_format = "3.0"
package = "sora-ai-video"
version = "1767585.155.102-1"
source = {
   url = "git+https://github.com/qy-upup/sora-ai-video.git",
   tag = "v1767585.155.102"
}
description = {
   summary = "High-performance AI sora ai video for supermaker.ai/video/sora-ai-video/",
   detailed = [[
      luarocks install sora-ai-video
      local sora = require("sora-ai-video")
      local sora = require("sora-ai-video")
      local video_url, error_message = sora.generate_video_from_text({
      prompt = "A cat playing the piano in a sunny living room.",
      duration = 10, -- in seconds
      resolution = "720p"
      })
      if video_url then
      print("Video generated successfully: " .. video_url)
      else
      print("Error generating video: " .. error_message)
      end
      local sora = require("sora-ai-video")
      local keyframes, error_message = sora.extract_keyframes({
   ]],
   homepage = "https://supermaker.ai/video/sora-ai-video/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "sora", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sora-ai-video"] = "src/init.lua"
   }
}
