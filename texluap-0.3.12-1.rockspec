rockspec_format = "3.0"
package = "texluap"
version = "0.3.12-1"

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
	"prompt-style==0.0.11",
	"texrocks==0.3.12",
}

test_dependencies = {
	"luatex==0.3.12",
	"toml2lua==3.0.0",
	"l3build==2024.10.16",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/texluap",
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
}
