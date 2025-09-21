-- nbt-0.1.1-1.rockspec

package       = "nbt"
version       = "0.1.1-1"

source = {
  url = "https://github.com/noImRed/lua-minecraft-nbt/archive/refs/tags/v0.1.1.zip",
  tag = "v0.1.1",
}

description = {
  summary  = "A Lua module for decoding and encoding Minecraft NBT and decoding SNBT data.",
  detailed = [[
    NBT/SNBT module for Lua.
  ]],
  homepage = "https://github.com/noImRed/lua-minecraft-nbt",
  license  = "MIT",
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type    = "builtin",
  modules = {
    nbt = "nbt.lua"
  }
}