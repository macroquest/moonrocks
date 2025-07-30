rockspec_format = "3.0"
package = "kpathsea"
version = "0.3.0-1"

description = {
	summary = "Standalone path lookup and expansion for the Kpathsea library",
	detailed = "A reimplementation of <https://tug.org/kpathsea>'s kpsewhich by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
	"texrocks==0.3.0",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/f76fcbdde576bdb70df56008749d1c09e106abb2.zip",
	dir = "texrocks-f76fcbdde576bdb70df56008749d1c09e106abb2/packages/kpathsea",
}

test = {
	type = "command",
	flags = {
		"texrocks.lua",
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
