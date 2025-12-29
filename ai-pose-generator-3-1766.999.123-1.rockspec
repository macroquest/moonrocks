rockspec_format = "3.0"
package = "ai-pose-generator-3"
version = "1766.999.123-1"
source = {
   url = "git+https://github.com/qy-upup/ai-pose-generator-3.git",
   tag = "v1766.999.123"
}
description = {
   summary = "High-performance AI ai pose generator 3 for supermaker.ai/image/ai-pose-generator/",
   detailed = [[
      luarocks install ai-pose-generator-3
      local poseGenerator = require("ai-pose-generator-3")
      -- Generate a default pose
      local pose = poseGenerator.generatePose()
      -- Print the pose data (for debugging)
      for key, value in pairs(pose) do
      print(key, value)
      end
      local poseGenerator = require("ai-pose-generator-3")
      -- Generate a pose
      local pose = poseGenerator.generatePose()
      -- Function to apply the pose to a character rig (implementation depends on your rig)
      local function applyPoseToRig(rig, poseData)
      -- Example: rig.head.rotation = poseData.headRotation
      -- Add your specific rig manipulation code here based on poseData
   ]],
   homepage = "https://supermaker.ai/image/ai-pose-generator/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-pose-generator-3"] = "src/init.lua"
   }
}
