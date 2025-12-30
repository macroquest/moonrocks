rockspec_format = "3.0"
package = "tomusic.ai-1"
version = "1767.83.237-1"
source = {
   url = "git+https://github.com/qy-upup/tomusic.ai-1.git",
   tag = "v1767.83.237"
}
description = {
   summary = "High-performance AI tomusic.ai 1 for tomusic.ai/",
   detailed = [[
      luarocks install tomusic.ai-1
      local music = require("tomusic.ai-1")
      local melody = music.generate_melody({
      scale = "major",
      length = 8,
      octave = 4
      })
      print(music.to_string(melody)) -- Output: A4 B4 C#5 D5 E5 F#5 G#5 A5
      local music = require("tomusic.ai-1")
      local phrase = "C4 D4 E4 F4"
      local transposed_phrase = music.transpose(phrase, 2) -- Transpose up by 2 semitones
      print(transposed_phrase) -- Output: D4 E4 F#4 G4
      local music = require("tomusic.ai-1")
      local progression = music.generate_chord_progression({
      chords = {"I", "IV", "V", "I"},
   ]],
   homepage = "https://tomusic.ai/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "tomusic.ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["tomusic.ai-1"] = "src/init.lua"
   }
}
