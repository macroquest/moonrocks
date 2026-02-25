rockspec_format = "3.0"
package = "lualatex"
version = "0.3.12-1"

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
	"luaotfload==3.29",
	"tex-ini-files==2025.02.09",
	"amsfonts==3.04",
	"texrocks==0.3.12",
	"latex-base==2025.06.01",
	"lm==2.005",
}

build_dependencies = {
	"amsfonts==3.04",
	"texrocks==0.3.12",
	"latex-fonts==0.0.1",
	"tex-ini-files==2025.02.09",
	"latex-base==2025.06.01",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/lualatex",
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
	build_command = "bin/lualatex --ini --interaction=nonstopmode lualatex.ini",
	install = {
		bin = {
			lualatex = "bin/lualatex",
		},
		conf = {
			["../web2c/luahbtex/lualatex.fmt"] = "lualatex.fmt",
		},
	},
}
