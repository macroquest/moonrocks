-- vim: set ft=lua:

rockspec_format = "3.0"

package = "import-gtksettings"
version = "0.4-1"

description = {
   summary = "GtkSettings to GSettings translation tool",
   homepage = "https://sr.ht/~lanthanic/import-gtksettings",
   issues_url = "https://lists.sr.ht/~lanthanic/public-inbox",
   maintainer = "Ian Hasdrubal",
   license = "Apache-2.0",
   labels = { "commandline" }
}

supported_platforms = { "!windows", "!win32" }
dependencies = { "lua == 5.4", "argparse >= 0.7.1", "luaposix >= 35.0", "luamini" }

source = {
   url = "https://git.sr.ht/~lanthanic/import-gtksettings/archive/0.4.tar.gz"
}

build = {
   type = "make",
   install_variables = {
      PREFIX = "$(PREFIX)",
      BINDIR = "$(BINDIR)",
      LUADIR = "$(LUADIR)"
   }
}
