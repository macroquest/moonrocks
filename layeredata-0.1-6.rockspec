package = "layeredata"
version = "0.1-6"

source = {
  url = "git+https://github.com/cosyverif/layeredata.git",
  tag = "0.1",
}

description = {
  summary     = "Layered Data",
  detailed    = [[]],
  license     = "MIT/X11",
  homepage    = "https://github.com/cosyverif/layeredata",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "c3",
  "coronest",
  "uuid",
}

build = {
  type    = "builtin",
  modules = {
    layeredata = "src/layeredata/init.lua",
  },
}
