
rockspec_format = "3.0"
package = "luatexinfo"
version = "0.0.1-1"

description = {
summary = "LuaTeX for TeXinfo",
detailed = "See https://github.com/ustctug/texrocks",
license = "GPL-3.0",
homepage = "https://www.luatex.org/",
maintainer = "Wu",
labels = {
"texmf",
},
}

dependencies = {
"lua >=5.1",
"amsfonts ==scm",
"initex ==0.0.1",
}

build_dependencies = {
"amsfonts ==scm",
"tex-ini-files ==scm",
"texinfo ==7.2",
"initex ==0.0.1",
"knuth-lib ==scm",
}

source = {
url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/luatexinfo.ini.zip",
dir = ".",
}

test = {
type = "command",
flags = {
"--output-format=dvi",
"test.texi",
},
command = "luatexinfo",
}

deploy = {
wrap_bin_scripts = false,
}

build = {
type = "command",
build_command = "texrocks --dump luatexinfo",
install = {
bin = {
luatexinfo = "luatexinfo",
texinfo = "texinfo",
},
conf = {
['../web2c/luahbtex/luatexinfo.fmt'] = "luatexinfo.fmt",
},
},
}