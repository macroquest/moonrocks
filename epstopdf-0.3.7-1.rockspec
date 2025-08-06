rockspec_format = "3.0"
package = "epstopdf"
version = "0.3.7-1"

description = {
	summary = "Convert EPS to PDF using Ghostscript",
	detailed = "A reimplementation of https://ctan.org/pkg/epstopdf by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texlua",
	},
}

dependencies = {
	"lua>=5.1",
	"texrocks==0.3.7",
	"argparse==0.7.1",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.7.zip",
	dir = "texrocks-0.3.7/packages/epstopdf",
}

test = {
	type = "command",
	flags = {
		"--debug",
		"--nogs",
		"test.eps",
	},
	command = "epstopdf",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
	install = {
		bin = {
			epstopdf = "0.3.7-1",
		},
	},
}
