rockspec_format = "3.0"
package = "kpathsea"
version = "0.3.5-1"

description = {
	summary = "Standalone path lookup and expansion for the Kpathsea library",
	detailed = "A reimplementation of https://tug.org/kpathsea's kpsewhich by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-semver==1.2.2",
	"argparse==0.7.1",
	"texrocks==0.3.5",
}

test_dependencies = {
	"lualatex==0.3.5",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.5.zip",
	dir = "texrocks-0.3.5/packages/kpathsea",
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
	install = {
		bin = {
			kpsewhich = "bin/kpsewhich",
		},
	},
}
