rockspec_format = "3.0"
package = "copyright-free-songs"
version = "1767774.444.65-1"
source = {
   url = "git+https://github.com/qy-upup/copyright-free-songs.git",
   tag = "v1767774.444.65"
}
description = {
   summary = "High-performance AI copyright free songs for supermaker.ai/music/copyright-free-songs/",
   detailed = [[
      luarocks install copyright-free-songs
      local cfs = require("copyright-free-songs")
      local playlist = cfs.generate_playlist(10) -- Generate a playlist of 10 songs
      for i, song in ipairs(playlist) do
      print(i .. ": " .. song.title .. " by " .. song.artist)
      end
      local cfs = require("copyright-free-songs")
      local song_id = 123 -- Replace with a valid song ID
      local song = cfs.get_song_metadata(song_id)
      if song then
      print("Title: " .. song.title)
      print("Artist: " .. song.artist)
      print("Genre: " .. song.genre)
      print("License: " .. song.license)
      else
   ]],
   homepage = "https://supermaker.ai/music/copyright-free-songs/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "copyright", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["copyright-free-songs"] = "src/init.lua"
   }
}
