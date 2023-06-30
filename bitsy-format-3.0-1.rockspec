package = "bitsy-format"
version = "3.0-1"
rockspec_format = "3.0"
source = {
  url = "git+https://git.sr.ht/~jummit/bitsy-format",
  tag = "3.0"
}
description = {
  summary = "Parse and write Bitsy files",
  detailed = "Bitsy (https://bitsy.org/) is a little game engine with a custom text format.\nThis package can parse .bitsy files into a table and serialize changed versions.\nA cli-application called parse-bitsy is provided to convert between .bitsy\nand .json files.\nExample: \"parse-bitsy game.bitsy\" will print the json version,\n\"parse-bitsy changed.json\" will write out the bitsy format.",
  homepage = "https://sr.ht/~jummit/bitsy-format",
  license = "GPL-3.0-or-later"
}
dependencies = {
  "lua >= 5.1",

  "rxi-json",
  "luarocks-build-fennel >= 0.1",
  "fennel >= 1.3.0",
}
build = {
  type = "fennel",

  modules = {
    ["bitsy-format"] = "src/bitsy-format/bitsy-format.fnl",
    ["bitsy-format.parse"] = "src/bitsy-format/parse.fnl",
    ["bitsy-format.pretty"] = "src/bitsy-format/pretty.fnl",
  },

  install = { bin = {["parse-bitsy"] = "src/bitsy-format/parse-bitsy.fnl"} },
}
test = {
   type = "command",
   command = "fennel tests/all.fnl",
}
