rockspec_format = "3.0"
package = "texluap"
version = "0.3.9-1"

description = {
	summary = "tlua: luatex as Lua interpreter, texlua's prompt",
	detailed = "Refer https://github.com/mfussenegger/nlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/texluap.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"texrocks==0.3.9",
	"prompt-style==0.0.10",
}

test_dependencies = {
	"luatex==0.3.9",
	"l3build==2024.10.16",
	"toml2lua==3.0.0",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.9.zip",
	dir = "texrocks-0.3.9/packages/texluap",
}

test = {
	type = "command",
	flags = {
		"--shell-escape",
		"test.tex",
	},
	command = "luatex",
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
