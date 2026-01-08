rockspec_format = "3.0"
package = "ai-minecraft-image"
version = "1767843.808.57-1"
source = {
   url = "git+https://github.com/qy-upup/ai-minecraft-image.git",
   tag = "v1767843.808.57"
}
description = {
   summary = "High-performance AI ai minecraft image for supermaker.ai/image/blog/how-to-turn-your-image-into-minecraft-skin/",
   detailed = [[
      luarocks install ai-minecraft-image
      local ai_minecraft_image = require("ai-minecraft-image")
      local image_path = "path/to/your/image.png" -- Replace with your image path
      local skin_data = ai_minecraft_image.create_skin(image_path)
      if skin_data then
      -- skin_data is a string containing the raw skin data.
      -- You can now save this data to a file or use it in your application.
      local file = io.open("output.png", "wb")
      file:write(skin_data)
      file:close()
      print("Skin generated successfully!")
      else
      print("Error generating skin.")
      end
      local ai_minecraft_image = require("ai-minecraft-image")
   ]],
   homepage = "https://supermaker.ai/image/blog/how-to-turn-your-image-into-minecraft-skin/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-minecraft-image"] = "src/init.lua"
   }
}
