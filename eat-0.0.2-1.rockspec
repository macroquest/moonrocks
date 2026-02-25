package = "Eat"
version = "0.0.2-1"

source = {
  url = "https://github.com/March012847/eat/archive/refs/tags/v0.0.1.zip"
}

description = {
  summary = "A Joke package but I'm bored so I made it.",
  detailed = "It will just prints out someone was eatten like that",
  homepage = "https://github.com/March012847/eat",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "luasocket"
}

build = {
  type = "builtin",
  modules = {
    eat = "eat.lua"
  }
}
