rockspec_format = "3.0"
package = "ai-baby-generator"
version = "1767667.153.845-1"
source = {
   url = "git+https://github.com/qy-upup/ai-baby-generator.git",
   tag = "v1767667.153.845"
}
description = {
   summary = "High-performance AI ai baby generator for supermaker.ai/image/ai-baby-generator/",
   detailed = [[
      luarocks install ai-baby-generator
      local baby_generator = require("ai-baby-generator")
      local prompt = baby_generator.generate_prompt()
      print(prompt)
      -- Example output: "A photorealistic image of a baby with big blue eyes, wearing a tiny knit hat, in a sunlit nursery."
      local baby_generator = require("ai-baby-generator")
      local prompt = baby_generator.generate_prompt({
      eye_color = "green",
      hair_color = "brown",
      gender = "female"
      })
      print(prompt)
      -- Example output: "A digital art piece of a baby girl with green eyes and brown hair, giggling while playing with blocks."
      local baby_generator = require("ai-baby-generator")
      local prompt = baby_generator.generate_prompt({
   ]],
   homepage = "https://supermaker.ai/image/ai-baby-generator/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-baby-generator"] = "src/init.lua"
   }
}
