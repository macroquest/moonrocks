rockspec_format = "3.0"
package = "sm-ai-pose-generator"
version = "1767.0.207-1"
source = {
   url = "git+https://github.com/qy-upup/sm-ai-pose-generator.git",
   tag = "v1767.0.207"
}
description = {
   summary = "High-performance AI sm ai pose generator for supermaker.ai/image/ai-pose-generator/",
   detailed = [[
      luarocks install sm-ai-pose-generator
      local pose_generator = require("sm-ai-pose-generator")
      local pose = pose_generator.generate_pose()
      -- Print the generated pose data
      print(pose)
      local pose_generator = require("sm-ai-pose-generator")
      local pose = pose_generator.generate_pose({
      style = "action",
      complexity = "high",
      facing = "left"
      })
      -- Use the generated pose data
      -- (e.g., apply it to a character model)
      -- ...
      local pose_generator = require("sm-ai-pose-generator")
   ]],
   homepage = "https://supermaker.ai/image/ai-pose-generator/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "sm", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sm-ai-pose-generator"] = "src/init.lua"
   }
}
