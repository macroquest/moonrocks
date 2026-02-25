rockspec_format = "3.0"
package = "ai-soulmate-drawing-generator"
version = "1766.997.696-1"
source = {
   url = "git+https://github.com/qy-upup/ai-soulmate-drawing-generator.git",
   tag = "v1766.997.696"
}
description = {
   summary = "High-performance AI ai soulmate drawing generator for supermaker.ai/image/ai-soulmate-drawing-generator",
   detailed = [[
      luarocks install ai-soulmate-drawing-generator
      local generator = require("ai-soulmate-drawing-generator")
      local image_url = generator.generate_soulmate_drawing({
      description = "A beautiful woman with long, flowing hair and kind eyes.",
      style = "Anime"
      })
      if image_url then
      print("Soulmate drawing URL:", image_url)
      else
      print("Error generating drawing.")
      end
      local generator = require("ai-soulmate-drawing-generator")
      local image_url = generator.generate_soulmate_drawing({
      description = "A handsome man with a confident smile.",
      negative_prompt = "ugly, deformed, bad anatomy",
   ]],
   homepage = "https://supermaker.ai/image/ai-soulmate-drawing-generator",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-soulmate-drawing-generator"] = "src/init.lua"
   }
}
