rockspec_format = "3.0"
package = "sdluatex"
version = "0.3.12-1"

description = {
	summary = "LuaTeX for sdLuaTeX",
	detailed = "See https://github.com/ustctug/texrocks",
	license = "GPL-3.0",
	homepage = "https://www.speedata.de/",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"publisher==5.1.18",
	"initex==0.3.12",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/sdluatex",
}

test = {
	type = "command",
	flags = {
		"layout.xml",
		"data.xml",
	},
	command = "sdluatex",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
