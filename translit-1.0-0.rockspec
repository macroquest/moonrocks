package = "translit"
version = "1.0-0"
source = {
   url = "https://github.com/Zoviet/nchan/archive/refs/tags/v1.0-0.tar.gz"
}
description = {
   summary = "Russian-to-English and English-to-Russian transliterator",
   detailed = [[
      Транслитерация с русского на английский. English-to-Russian transliterator.
   ]],
   homepage = "https://gitlabor.ru/Datenlabor/translit",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "utf8 >= 1.1"
}
external_dependencies = {

}
build = {
   type = "builtin",
   modules = { 
   }
}
