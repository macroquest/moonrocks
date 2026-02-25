rockspec_format = "3.0"
package = "grok-image-generator"
version = "1768531.555.964-1"
source = {
   url = "git+https://github.com/gcPC0x/grok-image-generator.git",
   tag = "v1768531.555.964"
}
description = {
   summary = "High-performance AI grok image generator for supermaker.ai/blog/-grok-image-generator-model-on-supermaker-ai-twitterready-images-made-simple/",
   detailed = [[
      luarocks install grok-image-generator
      local image_generator = require("grok_image_generator")
      local image_url = image_generator.generate_image("A futuristic cityscape at sunset")
      if image_url then
      print("Image URL:", image_url)
      else
      print("Error generating image.")
      end
      local image_generator = require("grok_image_generator")
      local options = {
      width = 512,
      height = 512
      }
      local image_url = image_generator.generate_image("A cat wearing a hat", options)
      if image_url then
   ]],
   homepage = "https://supermaker.ai/blog/-grok-image-generator-model-on-supermaker-ai-twitterready-images-made-simple/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "grok", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["grok-image-generator"] = "src/init.lua"
   }
}
