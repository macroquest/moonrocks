package = "BetterPrint"
version = "1.0.0-1"
source = {
   url = "https://github.com/somutoja/BetterPrint/archive/refs/heads/main.zip" -- URL to a zip or tar.gz of your source code (e.g., from GitHub)
}
description = {
   summary = "An easy to use library that allows for easier print debugging.",
   detailed = [[
      An easy to use library that allows for easier print debugging.
   ]],
   homepage = "https://github.com/somutoja/BetterPrint/",
   license = "BSD-3-Clause" -- Or any other license you prefer
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