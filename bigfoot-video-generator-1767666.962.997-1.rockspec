rockspec_format = "3.0"
package = "bigfoot-video-generator"
version = "1767666.962.997-1"
source = {
   url = "git+https://github.com/qy-upup/bigfoot-video-generator.git",
   tag = "v1767666.962.997"
}
description = {
   summary = "High-performance AI bigfoot video generator for supermaker.ai/video/bigfoot-video-generator/",
   detailed = [[
      luarocks install bigfoot-video-generator
      local video_generator = require("bigfoot-video-generator")
      local config = {
      output_path = "output.mp4",
      width = 1280,
      height = 720,
      frame_rate = 30,
      duration = 5, -- seconds
      background_image = "background.jpg",
      audio_file = "background_music.mp3"
      }
      video_generator.create_video(config)
      print("Video created successfully!")
      local video_generator = require("bigfoot-video-generator")
      local config = {
   ]],
   homepage = "https://supermaker.ai/video/bigfoot-video-generator/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "bigfoot", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["bigfoot-video-generator"] = "src/init.lua"
   }
}
