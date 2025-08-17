rockspec_format = "3.0"
package = "texdef"
version = "0.3.12-1"

description = {
	summary = "Show definitions of TeX commands",
	detailed = "A reimplementation of https://github.com/MartinScharrer/texdef/ by texlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/texdef.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"luatex==0.3.12",
	"currfile==1.0",
	"argparse==0.7.1",
	"lua-template==1.0.0",
	"lualatex==0.3.12",
}

test_dependencies = {
	"toml2lua==3.0.0",
	"l3build==2024.10.16",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/texdef",
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
}
