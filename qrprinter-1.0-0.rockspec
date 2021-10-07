package = 'qrprinter'
version = '1.0-0'
supported_platforms = {'linux'}
source = {
   url = "git+https://gitlab.com/jessieh/qrprinter",
   tag = "1.0-0"
}
description = {
   summary = "Encode and print strings as QR codes.",
   detailed = "qrprinter wraps the libqrencode C library to provide an easy way of encoding and printing strings as QR codes from Lua.",
   homepage = "https://gitlab.com/jessieh/qrprinter",
   maintainer = "Jessie Hildebrandt <jessieh@jessieh.net>",
   license = "GPLv3"
}
dependencies = {
   "lua >= 5.1",
}
external_dependencies = {
   LIBQRENCODE = {
      header = "qrencode.h"
   }
}
build = {
   type = "make",
   makefile = "Makefile",
   install = {
      lua = {
         ["qrprinter"] = "build/qrprinter.lua",
         ["qrprinter.ffi.qrencode"] = "build/ffi/qrencode.lua"
      }
   }
}
