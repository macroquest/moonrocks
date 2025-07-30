rockspec_format = "3.0"
package = "luatex"
version = "0.3.1-1"

description = {
	summary = "LuaTeX for plainTeX",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.luatex.org/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"texrocks==0.3.1",
	"amsfonts==3.04",
}

build_dependencies = {
	"unicode-data==1.18",
	"etex==2.1",
	"texrocks==0.3.1",
	"tex-ini-files==2025.02.09",
	"amsfonts==3.04",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.1.zip",
	dir = "texrocks-0.3.1/packages/luatex",
}

test = {
	type = "command",
	flags = {
		"test.tex",
	},
	command = "luatex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "texlua --ini --interaction=nonstopmode luatex.ini",
	install = {
		bin = {
			luatex = "luatex",
		},
		conf = {
			["../web2c/luahbtex/luatex.fmt"] = "luatex.fmt",
		},
	},
}
