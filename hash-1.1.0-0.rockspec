package = 'hash'
version = '1.1.0-0'

source = {
  url = 'git://github.com/evandrolg/Hash.lua.git',
  tag = 'v1.1.0'
}

description = {
  summary = "Library with useful methods to handle a Lua's table when it's working as a Hash.",
  homepage = 'https://github.com/EvandroLG/Hash.lua',
  maintainer = 'Evandro Leopoldino Gonçalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ['Hash'] = "src/Hash/init.lua",
    ['Hash.utils'] = "src/Hash/utils.lua"
  }
}
