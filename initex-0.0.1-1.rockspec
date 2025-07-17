
rockspec_format = "3.0"
package = "initex"
version = "0.0.1-1"

description = {
summary = "initex",
detailed = "An initial TeX without any extra features except generating other TeXs by `initex --ini XXX.ini` and called by other TeXs by `initex --fmt XXX`",
license = "GPL-3.0",
homepage = "https://www.luatex.org/",
maintainer = "Wu Zhenyu",
labels = {
"texmf",
},
}

dependencies = {
"lua >=5.1",
"texrocks ==0.1.3",
}

build_dependencies = {
"texrocks ==0.1.3",
}

source = {
url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/initex.ini.zip",
dir = ".",
}

test = {
type = "command",
flags = {
"initex",
"test.tex",
},
command = "texrocks",
}

deploy = {
wrap_bin_scripts = false,
}

build = {
type = "command",
build_command = "texrocks --dump initex",
install = {
bin = {
initex = "initex",
},
conf = {
['../web2c/luahbtex/initex.fmt'] = "initex.fmt",
},
},
}