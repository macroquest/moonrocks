package = "BetterPrint"
version = "2.0.0-1"
source = {
   url = "https://github.com/somutoja/BetterPrint/archive/refs/heads/main.zip"
}
description = {
   summary = "An easy to use library that allows for easier print debugging and adds many print utilities.",
   detailed = [[
      An easy to use library that allows for easier print debugging and adds many print utilities.
   ]],
   homepage = "https://github.com/somutoja/BetterPrint/",
   license = "BSD-3-Clause"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      BetterPrint = "BetterPrint.lua"
   }
}