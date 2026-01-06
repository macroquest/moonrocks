rockspec_format = "3.0"
package = "ai-make-music"
version = "1767667.326.381-1"
source = {
   url = "git+https://github.com/qy-upup/ai-make-music.git",
   tag = "v1767667.326.381"
}
description = {
   summary = "High-performance AI ai make music for supermaker.ai/music/ai-make-music/",
   detailed = [[
      luarocks install ai-make-music
      local ai_music = require("ai-make-music")
      local melody = ai_music.generate_melody({
      style = "pop",
      length = 30, -- seconds
      tempo = 120
      })
      print("Generated Melody:", melody) -- Returns a string representing the melody (e.g., MIDI data)
      -- Save the melody to a file (implementation depends on your MIDI library)
      -- local file = io.open("melody.mid", "w")
      -- file:write(melody)
      -- file:close()
      local ai_music = require("ai-make-music")
      local base_melody = "C4 D4 E4 F4 G4 A4 B4 C5" -- Example melody
      local harmony = ai_music.harmonize_melody({
   ]],
   homepage = "https://supermaker.ai/music/ai-make-music/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-make-music"] = "src/init.lua"
   }
}
