build = {
  install = {
    bin = {
      ttodo = "out/ttodo"
    }
  },
  type = "builtin"
}
dependencies = {
  "lua >= 5.1"
}
description = {
  detailed = "ttodo is a small tool to handle your todo list. It supports a CLI and a TUI. Requires tput and stty.\n",
  summary = "Small todo list cli/gui"
}
package = "ttodo"
rockspec_format = "3.0"
source = {
  tag = "v0.2",
  url = "git://github.com/natnat-mc/ttodo"
}
version = "0.2-1"
