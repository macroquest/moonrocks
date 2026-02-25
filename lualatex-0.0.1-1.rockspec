
rockspec_format = "3.0"
package = "lualatex"
version = "0.0.1-1"

description = {
summary = "lualatex for LaTeX",
detailed = "See https://github.com/ustctug/texrocks",
license = "GPL-3.0",
homepage = "https://www.lualatex.org/",
maintainer = "Wu",
labels = {
"texmf",
},
}

dependencies = {
"lua >=5.1",
"amsfonts ==scm",
"initex ==0.0.1",
"tex-ini-files ==scm",
"latex-base ==2024.11.01",
}

build_dependencies = {
"initex ==0.0.1",
"amsfonts ==scm",
"latex-fonts ==scm",
"tex-ini-files ==scm",
"latex-base ==2024.11.01",
}

source = {
url = "https://github.com/ustctug/texrocks/releases/download/0.0.1/empty.zip",
dir = ".",
}

test = {
type = "command",
flags = {
"test.tex",
},
command = "lualatex",
}

deploy = {
wrap_bin_scripts = false,
}

build = {
type = "command",
build_command = "texrocks --dump lualatex",
install = {
bin = {
lualatex = "lualatex",
latex = "latex",
},
conf = {
['../web2c/luahbtex/lualatex.fmt'] = "lualatex.fmt",
},
},
}