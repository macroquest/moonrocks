rockspec_format = "3.0"
package = "lua-open"
version = "0.2.4-1"

description = {
	summary = "Use system tool to open a file",
	detailed = "If the file doesn't exist in current path, it will search package path by `lux.toml`",
	maintainer = "Wu",
	labels = {
		"texlua",
	},
}

dependencies = {
	"lua>=5.1",
	"toml2lua==3.0.0",
	"texrocks==0.2.4",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/ae67947f7e6ab4bc922beb0810a0434b0a8a142b.zip",
	dir = "texrocks-ae67947f7e6ab4bc922beb0810a0434b0a8a142b/packages/lua-open",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
	install = {
		bin = {
			["lua-open"] = "bin/lua-open",
		},
	},
}
