rockspec_format = "3.0"
package = "texluap"
version = "0.3.0-1"

description = {
	summary = "tlua: luatex as Lua interpreter, texlua's prompt",
	detailed = "Refer <https://github.com/mfussenegger/nlua>",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"texrocks==0.3.0",
	"prompt-style==0.0.9",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/60ae95531ebd55e9054239ab654966120d4ec314.zip",
	dir = "texrocks-60ae95531ebd55e9054239ab654966120d4ec314/packages/texluap",
}

test = {
	type = "command",
	flags = {
		"-e",
		"print(status.banner)",
	},
	command = "tlua",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "builtin",
	install = {
		bin = {
			tlua = "bin/tlua",
		},
	},
}
