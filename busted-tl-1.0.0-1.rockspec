rockspec_format = "3.0"
package = "busted-tl"
version = "1.0.0-1"
source = {
   url = "git+https://gitea.aireone.xyz/Aire-One/busted-tl.git",
   tag = "v1.0.0"
}
description = {
   summary = "Add Teal capabilities to Busted 🧙",
   detailed = "Busted-tl is a new Loader for Busted that adds Teal support.",
   homepage = "https://gitea.aireone.xyz/Aire-One/busted-tl",
   license = "MIT",
   issues_url = "https://gitea.aireone.xyz/Aire-One/busted-tl/issues",
   labels = {
      "busted",
      "teal",
      "testing"
   },
   maintainer = "Aire-One"
}
dependencies = {
   "lua >= 5.1",
   "penlight >= 1.3.2",
   "busted >= 2.1.2-3",
   "tl >= 0.15.1-1"
}
build_dependencies = {
   "cyan >= 0.3.0-1"
}
build = {
   type = "command",
   build_command = "cyan build",
   install = {
      lua = {
         ["busted.modules.files.teal"] = "build/busted-tl/teal.lua"
      }
   }
}
test = {
   type = "busted",
   flags = {
      "--loaders=teal"
   }
}
