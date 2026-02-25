-- vim: set ft=lua:

rockspec_format = "3.0"

package = "luamini"
version = "0.1-1"

description = {
   summary = "Minimal ini parser for Lua 5.2+",
   homepage = "https://sr.ht/~lanthanic/luamini",
   issues_url = "https://lists.sr.ht/~lanthanic/public-inbox",
   maintainer = "Ian Hasdrubal",
   license = "Apache-2.0"
}

dependencies = { "lua >= 5.2" }

source = {
   url = "https://git.sr.ht/~lanthanic/luamini/archive/0.1.tar.gz"
}

build = {
   type = "make",
   install_variables = {
      PREFIX = "$(PREFIX)",
      LUADIR = "$(LUADIR)"
   }
}
