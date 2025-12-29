rockspec_format = "3.0"
package = "ai-minecraft-skin"
version = "1766.994.805-1"
source = {
   url = "git+https://github.com/qy-upup/ai-minecraft-skin.git",
   tag = "v1766.994.805"
}
description = {
   summary = "High-performance AI ai minecraft skin for supermaker.ai/image/ai-minecraft-skin/",
   detailed = [[
      luarocks install ai-minecraft-skin
      local skin = require("ai-minecraft-skin")
      -- Generate a random skin
      local new_skin = skin.generate_skin()
      -- Access skin data (example: skin pixels)
      local pixel_data = new_skin.pixels
      -- Print a brief summary
      print("Generated a new skin with dimensions:", new_skin.width, "x", new_skin.height)
      local skin = require("ai-minecraft-skin")
      -- Generate a skin
      local my_skin = skin.generate_skin()
      -- Define a color palette
      local palette = {
      { r = 255, g = 0, b = 0 },   -- Red
      { r = 0, g = 255, b = 0 },   -- Green
   ]],
   homepage = "https://supermaker.ai/image/ai-minecraft-skin/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-minecraft-skin"] = "src/init.lua"
   }
}
