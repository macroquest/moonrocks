rockspec_format = "3.0"
package = "luatexinfo"
version = "0.3.12-1"

description = {
	summary = "LuaTeX for TeXinfo",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.gnu.org/software/texinfo/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"amsfonts==3.04",
	"texrocks==0.3.12",
}

build_dependencies = {
	"texrocks==0.3.12",
	"texinfo==7.2",
	"knuth-lib==2021.02.05",
	"tex-ini-files==2025.02.09",
	"amsfonts==3.04",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/luatexinfo",
}

test = {
	type = "command",
	flags = {
		"test.texi",
	},
	command = "luatexinfo",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "bin/luatexinfo --ini --interaction=nonstopmode luatexinfo.ini",
	install = {
		bin = {
			luatexinfo = "bin/luatexinfo",
		},
		conf = {
			["../web2c/luahbtex/luatexinfo.fmt"] = "luatexinfo.fmt",
		},
	},
}
