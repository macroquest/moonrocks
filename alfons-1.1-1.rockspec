package = "alfons"
version = '1.1-1'
source = {
  url = "git://github.com/daelvn/alfons",
  tag = "v1.1"
}
description = {
  summary = "Small program to run tasks for your project",
  detailed = [[
    alfons is a small script utility that lets you run tasks
    from a file (Lua or MoonScript), to better manage your
    project with tasks such as clean, compile, etc. To run
    tasks from a MoonScript file, you will need the
    moonscript rock.]],
  homepage = "https://github.com/daelvn/alfons",
  license  = "MIT/X11"
}
dependencies = {
  "ltext",
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    file = "file.lua"
  },
  install = {
    bin = {
      alfons = "alfons.lua"
    }
  }
}
