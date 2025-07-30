rockspec_format = "3.0"
package = "texdef"
version = "0.3.1-1"

description = {
	summary = "Show definitions of TeX commands",
	detailed = "A reimplementation of <https://github.com/MartinScharrer/texdef/> by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-template==1.0.0",
	"currfile==1.0",
	"lualatex==0.3.1",
	"argparse==0.7.1",
	"luatex==0.3.1",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.1.zip",
	dir = "texrocks-0.3.1/packages/texdef",
}

test = {
	type = "command",
	flags = {
		"TeX",
	},
	command = "texdef",
}

build = {
	type = "builtin",
	install = {
		bin = {
			latexdef = "bin/latexdef",
			texdef = "bin/texdef",
		},
	},
}
