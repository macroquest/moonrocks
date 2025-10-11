package = "evasive-net"
version = "0.0-0"
source = {
   url = "git+https://www.github.com/code-nuage/evasive-net",
   tag = "0.0-0"
}
description = {
   homepage = "https://www.github.com/code-nuage/evasive-net",
   license = "MIT"
}
dependencies = {
   "luv >= 1.51-0.1"
}
build = {
   type = "builtin",
   modules = {
      ["evasive-net"] = "evasive-net.lua"
   }
}
