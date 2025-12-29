rockspec_format = "3.0"
package = "nano-banana-1"
version = "1766.993.9-1"
source = {
   url = "git+https://github.com/qy-upup/nano-banana-1.git",
   tag = "v1766.993.9"
}
description = {
   summary = "High-performance AI nano banana 1 for supermaker.ai/image/nano-banana/",
   detailed = [[
      luarocks install nano-banana-1
      local banana = require("nano-banana-1")
      local image = banana.load_image("path/to/your/image.png")
      if image then
      local width, height = image:get_dimensions()
      print("Image Width:", width)
      print("Image Height:", height)
      else
      print("Failed to load image.")
      end
      local banana = require("nano-banana-1")
      local image = banana.load_image("path/to/your/image.jpg")
      if image then
      image:to_grayscale()
      image:save("path/to/grayscale_image.png") -- Saves as PNG for best grayscale representation
   ]],
   homepage = "https://supermaker.ai/image/nano-banana/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "nano", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["nano-banana-1"] = "src/init.lua"
   }
}
