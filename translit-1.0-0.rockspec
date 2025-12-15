package = "translit"
version = "1.0-0"
rockspec_format = '3.0'
source = {
   url = "git_https://gitlabor.ru/Datenlabor/translit/",
   tag = "1.0-0"
}
description = {
   summary = "Cyrillic-to-English and English-to-Cyrillic transliterator",
   detailed = [[
      Cyrillic-to-English and English-to-Cyrillic transliterator. Транслитерация с киррилицы на английский и обратно.
   ]],
   labels = { 'transliterator', 'cyrillic','russian' } ,
   homepage = "https://gitlabor.ru/Datenlabor/translit",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1",
   "utf8 >= 1.2"
}
external_dependencies = {

}
build = {
   type = "builtin"
}
