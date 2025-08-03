rockspec_format = "3.0"
package = "texdef"
version = "0.3.5-1"

description = {
	summary = "Show definitions of TeX commands",
	detailed = "A reimplementation of https://github.com/MartinScharrer/texdef/ by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"luatex==0.3.5",
	"lua-template==1.0.0",
	"argparse==0.7.1",
	"currfile==1.0",
	"lualatex==0.3.5",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.5.zip",
	dir = "texrocks-0.3.5/packages/texdef",
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
