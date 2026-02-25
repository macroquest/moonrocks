rockspec_format = "3.0"
package = "ai-snow-trend"
version = "1768557.14.476-1"
source = {
   url = "git+https://github.com/gcPC0x/ai-snow-trend.git",
   tag = "v1768557.14.476"
}
description = {
   summary = "High-performance AI ai snow trend for supermaker.ai/blog/how-to-make-ai-snow-trend-photos-for-tiktok-free-tutorial/",
   detailed = [[
      luarocks install ai-snow-trend
      local snow = require("ai-snow-trend")
      local image_path = "path/to/your/image.jpg"
      local output_path = "path/to/output/snowy_image.jpg"
      snow.apply_snow_overlay(image_path, output_path, { snow_density = 0.7 })
      print("Snow overlay applied to image.")
      local snow = require("ai-snow-trend")
      local image_path = "path/to/your/image.png"
      local output_path = "path/to/output/dense_snow.png"
      snow.apply_snow_overlay(image_path, output_path, { snow_density = 0.9, flake_size = 5 })
      print("Snow overlay with high density applied.")
      local snow = require("ai-snow-trend")
      local image_path = "path/to/your/image.gif" -- Assumes the image is already a GIF
      local output_path = "path/to/output/snowy_animation.gif"
      -- Note: This is a simplified example.  For true animation, you would apply the snow
   ]],
   homepage = "https://supermaker.ai/blog/how-to-make-ai-snow-trend-photos-for-tiktok-free-tutorial/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-snow-trend"] = "src/init.lua"
   }
}
