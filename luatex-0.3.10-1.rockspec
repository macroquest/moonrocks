rockspec_format = "3.0"
package = "luatex"
version = "0.3.10-1"

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
	"amsfonts==3.04",
	"texrocks==0.3.10",
}

build_dependencies = {
	"texrocks==0.3.10",
	"amsfonts==3.04",
	"unicode-data==1.18",
	"etex==2.1",
	"tex-ini-files==2025.02.09",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.10.zip",
	dir = "texrocks-0.3.10/packages/luatex",
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
	build_command = "../initex/bin/initex --ini --interaction=nonstopmode luatex.ini",
	install = {
		bin = {
			luatex = "../initex/bin/initex",
		},
		conf = {
			["../web2c/luahbtex/luatex.fmt"] = "luatex.fmt",
		},
	},
}
