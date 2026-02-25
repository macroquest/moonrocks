rockspec_format = "3.0"
package = "diffrhythm.ai"
version = "1767511.117.927-1"
source = {
   url = "git+https://github.com/qy-upup/diffrhythm.ai.git",
   tag = "v1767511.117.927"
}
description = {
   summary = "High-performance AI diffrhythm.ai for diffrhythm.ai/",
   detailed = [[
      luarocks install diffrhythm.ai
      local diffrhythm = require("diffrhythm.ai")
      local rhythm1 = { 1, 0, 1, 0, 1, 0, 1, 0 } -- Simple alternating rhythm
      local rhythm2 = { 1, 0, 0, 1, 0, 1, 0, 0 } -- Slightly different rhythm
      local similarity = diffrhythm.compare_rhythms(rhythm1, rhythm2)
      print("Similarity score:", similarity) -- Output will be a value between 0 and 1
      local diffrhythm = require("diffrhythm.ai")
      local length = 16
      local density = 0.6 -- Probability of a beat occurring
      local random_rhythm = diffrhythm.generate_random_rhythm(length, density)
      print("Random Rhythm:", table.concat(random_rhythm, ", "))
      local diffrhythm = require("diffrhythm.ai")
      local rhythm = { 1, 0, 1, 1, 0, 0, 1, 0 }
      local shift_amount = 2
      local shifted_rhythm = diffrhythm.shift_rhythm(rhythm, shift_amount)
   ]],
   homepage = "https://diffrhythm.ai/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "diffrhythm.ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["diffrhythm.ai"] = "src/init.lua"
   }
}
