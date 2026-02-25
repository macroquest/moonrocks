rockspec_format = "3.0"
package = "lualatex"
version = "0.3.8-1"

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
	"lua>=5.1",
	"lm==2.005",
	"luaotfload==3.29",
	"texrocks==0.3.8",
	"tex-ini-files==2025.02.09",
	"amsfonts==3.04",
	"latex-base==2025.06.01",
}

build_dependencies = {
	"latex-fonts==0.0.1",
	"latex-base==2025.06.01",
	"tex-ini-files==2025.02.09",
	"texrocks==0.3.8",
	"amsfonts==3.04",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.8.zip",
	dir = "texrocks-0.3.8/packages/lualatex",
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
	build_command = "../initex/bin/initex --ini --interaction=nonstopmode lualatex.ini",
	install = {
		bin = {
			lualatex = "../initex/bin/initex",
		},
		conf = {
			["../web2c/luahbtex/lualatex.fmt"] = "lualatex.fmt",
		},
	},
}
