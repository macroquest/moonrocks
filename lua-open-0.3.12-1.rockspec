rockspec_format = "3.0"
package = "lua-open"
version = "0.3.12-1"

description = {
	summary = "Use system tool to open a file",
	detailed = "If the file doesn't exist in current path, it will search package path by `lux.toml`",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/lua-open.md.html",
	maintainer = "Wu",
	labels = {
		"texlua",
	},
}

dependencies = {
	"lua>=5.1",
	"toml2lua==3.0.0",
	"texrocks==0.3.12",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/lua-open",
}

test = {
	type = "command",
	flags = {
		"bin/lua-open",
	},
	command = "lua-open",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
}
