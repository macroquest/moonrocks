package = "tl-pages"
version = "2.2-3"
rockspec_format = "3.0"
source = {
   url = "git+https://codeberg.org/Andre-LA/tl-pages",
   branch = "master",
}
description = {
   summary = "Teal library to generate html",
   homepage = "https://codeberg.org/Andre-LA/tl-pages",
   license = "MPL-2.0",
   maintainer = "André L. Alvares <andrluiz.alvares.alvares84@gmail.com>",
   issues_url = "https://codeberg.org/Andre-LA/tl-pages/issues",
   labels = { "teal", "html" },
}
dependencies = {
   "compat53",
}
build = {
   type = "builtin",
   modules = {
      ["tlpages.element"] = "build/tlpages/element.lua",
      ["tlpages.page"] = "build/tlpages/page.lua",
      ["tlpages.tag"] = "build/tlpages/tag.lua",
      ["tlpages.utils"] = "build/tlpages/utils.lua",
   },
   install = {
      lua = {
         ["tlpages.element"] = "src/tlpages/element.tl",
         ["tlpages.page"] = "src/tlpages/page.tl",
         ["tlpages.tag"] = "src/tlpages/tag.tl",
         ["tlpages.utils"] = "src/tlpages/utils.tl",
      },
   },
   copy_directories = {
      "doc"
   }
}
