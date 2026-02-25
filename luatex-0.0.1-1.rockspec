
rockspec_format = "3.0"
package = "luatex"
version = "0.0.1-1"

description = {
summary = "LuaTeX for plainTeX",
detailed = "See https://github.com/Freed-Wu/texrocks",
license = "GPL-3.0",
homepage = "https://www.luatex.org/",
maintainer = "Wu Zhenyu",
labels = {
"texmf",
},
}

dependencies = {
"lua ==5.3",
"amsfonts ==scm",
"texrocks ==0.1.0",
}

source = {
url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/luatex.zip",
dir = ".",
}

test = {
type = "command",
command = "tex",
}

deploy = {
wrap_bin_scripts = false,
}

build = {
type = "command",
build_command = "texlua ./build.lua luatex",
install = {
bin = {
tex = "tex",
luatex = "luatex",
},
conf = {
['../web2c/luahbtex/luatex.fmt'] = "luatex.fmt",
},
},
}