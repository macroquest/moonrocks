rockspec_format = "3.0"
package = "ai-kissing"
version = "1767774.217.43-1"
source = {
   url = "git+https://github.com/qy-upup/ai-kissing.git",
   tag = "v1767774.217.43"
}
description = {
   summary = "High-performance AI ai kissing for supermaker.ai/video/ai-kissing/",
   detailed = [[
      luarocks install ai-kissing
      local ai_kissing = require("ai-kissing")
      local ai_kissing = require("ai-kissing")
      local result = ai_kissing.simulate_kiss({
      initiator = { name = "Alice", affection = 0.8 },
      receiver  = { name = "Bob", affection = 0.7 },
      duration  = 2, -- seconds
      })
      print("Kiss Simulation Result:")
      print("Intensity:", result.intensity)
      print("Success:", result.success)
      print("Comment:", result.comment)
      local ai_kissing = require("ai-kissing")
      local compatibility = ai_kissing.analyze_compatibility({
      initiator = { name = "Charlie", personality = "romantic" },
   ]],
   homepage = "https://supermaker.ai/video/ai-kissing/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-kissing"] = "src/init.lua"
   }
}
