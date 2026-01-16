rockspec_format = "3.0"
package = "ai-twerk-generator"
version = "1768544.455.937-1"
source = {
   url = "git+https://github.com/gcPC0x/ai-twerk-generator.git",
   tag = "v1768544.455.937"
}
description = {
   summary = "High-performance AI ai twerk generator for supermaker.ai/blog/how-to-make-ai-twerk-video-with-supermaker-ai-free-online/",
   detailed = [[
      luarocks install ai-twerk-generator
      local twerk = require("ai-twerk-generator")
      -- Initialize the animation generator with default settings.
      local generator = twerk.create_generator()
      -- Generate a single frame of the animation.
      local frame = generator:generate_frame()
      -- Access the pose data for the current frame.
      local pose = frame.pose
      -- Print the pose data (example).
      print("Pose data:", pose)
      local twerk = require("ai-twerk-generator")
      -- Configure the animation generator with custom parameters.
      local config = {
      style = "energetic",
      intensity = 0.8,
   ]],
   homepage = "https://supermaker.ai/blog/how-to-make-ai-twerk-video-with-supermaker-ai-free-online/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-twerk-generator"] = "src/init.lua"
   }
}
