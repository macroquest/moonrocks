rockspec_format = "3.0"
package = "initex"
version = "0.3.6-1"

description = {
	summary = "initex",
	detailed = "An initial TeX without any extra features except generating other TeXs by `initex --ini XXX.ini`",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"texrocks==0.3.6",
}

build_dependencies = {
	"texrocks==0.3.6",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.6.zip",
	dir = "texrocks-0.3.6/packages/initex",
}

test = {
	type = "command",
	flags = {
		"test.tex",
	},
	command = "initex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/initex --ini --interaction=nonstopmode initex.ini",
	install = {
		bin = {
			initex = "bin/initex",
		},
		conf = {
			["../web2c/luahbtex/initex.fmt"] = "initex.fmt",
		},
	},
}
