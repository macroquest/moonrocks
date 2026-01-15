rockspec_format = "3.0"
package = "kling-motio-control"
version = "1768444.568.616-1"
source = {
   url = "git+https://github.com/gcPC0x/kling-motio-control.git",
   tag = "v1768444.568.616"
}
description = {
   summary = "High-performance AI kling motio control for supermaker.ai/blog/what-is-kling-motion-control-ai-how-to-use-motion-control-ai-free-online/",
   detailed = [[
      luarocks install kling-motio-control
      local motio = require("kling-motio-control")
      local motio = require("kling-motio-control")
      -- Define a simple linear motion profile
      local profile = motio.linear_motion({
      start_position = { x = 0, y = 0, z = 0 },
      end_position = { x = 100, y = 50, z = 25 },
      velocity = 50,  -- Units per second
      acceleration = 10 -- Units per second squared
      })
      -- Execute the motion profile (simulated)
      motio.execute(profile)
      -- Print the motion trajectory (for debugging or visualization)
      for i, point in ipairs(profile.trajectory) do
      print(string.format("Time: %.2f, Position: x=%.2f, y=%.2f, z=%.2f",
   ]],
   homepage = "https://supermaker.ai/blog/what-is-kling-motion-control-ai-how-to-use-motion-control-ai-free-online/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "kling", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["kling-motio-control"] = "src/init.lua"
   }
}
