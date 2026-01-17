package = "stileweb"
version = "1.0.1-1"

source = {
   url = "git+https://github.com/SilvioNetoesBrasil/STileWeb",
   tag = "v1.0.1-1"
}

description = {
   summary = "STileWeb - Navegador simples em Lua usando WebKit2GTK",
   detailed = [[
STileWeb (SilvioTileWeb Browser) é um navegador simples
feito em Lua 5.3 usando WebKit2GTK 4.1.
   ]],
   homepage = "https://github.com/SilvioNetoesBrasil/STileWeb/raw/refs/heads/main/STileWeb-v1.0.1-1.tar.gz",
   license = "MIT"
}

dependencies = {
   "lua >= 5.3"
}

build = {
   type = "builtin",
   modules = {
      ["stileweb"] = "src/STileWeb.lua"
   },
   install = {
      bin = {
         stileweb = "src/STileWeb.lua"
      }
   }
}
