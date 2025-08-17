rockspec_format = "3.0"
package = "kpathsea"
version = "0.3.12-1"

description = {
	summary = "Standalone path lookup and expansion for the Kpathsea library",
	detailed = "A reimplementation of https://tug.org/kpathsea's kpsewhich by texlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/kpathsea.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
	"lua-semver==1.2.2",
	"texrocks==0.3.12",
}

test_dependencies = {
	"lualatex==0.3.12",
	"l3build==2024.10.16",
	"toml2lua==3.0.0",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/kpathsea",
}

test = {
	type = "command",
	flags = {
		"url.sty",
	},
	command = "kpsewhich",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
