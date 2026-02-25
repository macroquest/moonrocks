rockspec_format = "3.0"
package = "luatexinfo"
version = "0.2.4-1"

description = {
	summary = "LuaTeX for TeXinfo",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.luatex.org/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"amsfonts==3.04",
	"texrocks==0.2.4",
}

build_dependencies = {
	"texrocks==0.2.4",
	"tex-ini-files==2025.02.09",
	"amsfonts==3.04",
	"knuth-lib==2021.02.05",
	"texinfo==7.2",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.2.4.zip",
	dir = "texrocks-0.2.4/packages/luatexinfo",
}

test = {
	type = "command",
	flags = {
		"--output-format=dvi",
		"test.texi",
	},
	command = "luatexinfo",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "command",
	build_command = "texlua --ini --interaction=nonstopmode luatexinfo.ini",
	install = {
		bin = {
			luatexinfo = "luatexinfo",
		},
		conf = {
			["../web2c/luahbtex/luatexinfo.fmt"] = "luatexinfo.fmt",
		},
	},
}
