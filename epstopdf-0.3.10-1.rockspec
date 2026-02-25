rockspec_format = "3.0"
package = "epstopdf"
version = "0.3.10-1"

description = {
	summary = "Convert EPS to PDF using Ghostscript",
	detailed = "A reimplementation of https://ctan.org/pkg/epstopdf by texlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/epstopdf.md.html",
	maintainer = "Wu",
	labels = {
		"texlua",
	},
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
	"texrocks==0.3.10",
}

test_dependencies = {
	"toml2lua==3.0.0",
	"l3build==2024.10.16",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.10.zip",
	dir = "texrocks-0.3.10/packages/epstopdf",
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
			epstopdf = "0.3.10-1",
		},
	},
}
