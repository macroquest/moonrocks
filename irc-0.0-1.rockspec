package = "irc"
version = "0.0-1"
source = {
   url = "https://codeberg.org/Yonle/luairc/archive/v0.0-1.tar.gz"
}
description = {
   summary = "lua irc library that's designed to be used with luasocket.",
   detailed = [[
for more information, visit https://codeberg.org/Yonle/luairc
]],
   homepage = "https://codeberg.org/Yonle/luairc",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["irc"] = "irc/init.lua",
      ["irc.format"] = "irc/format.lua",
      ["irc.commands"] = "irc/commands.lua",
      ["irc.misc"] = "irc/misc.lua"
   }
}
