rockspec_format = "3.0"
package = "texcat"
version = "0.3.8-1"

description = {
	summary = "syntax highlight code in LaTeX",
	detailed = "A reimplementation of https://pygments.org/docs/formatters/#LatexFormatter by texlua",
	license = "GPL-3.0",
	homepage = "https://github.com/ustctug/texrocks",
	maintainer = "Wu",
	labels = {
		"tex",
	},
}

dependencies = {
	"lua>=5.1",
	"argparse==0.7.1",
	"luafilesystem==1.8.0",
	"lua-template==1.0.0",
	"nvim-textmate==0.0.1",
	"ltreesitter==0.1.0",
	"warna==0.3.5",
}

test_dependencies = {
	"tree-sitter-lua==0.0.36",
	"fancyvrb==4.6",
	"graphics-cfg==0.0.1",
	"lualatex==0.3.8",
	"vscode-extensions==1.102.3",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.8.zip",
	dir = "texrocks-0.3.8/packages/texcat",
}

test = {
	type = "command",
	flags = {
		"--shell-escape",
		"test.tex",
	},
	command = "lualatex",
}

build = {
	type = "builtin",
	install = {
		bin = {
			texcat = "bin/texcat",
		},
	},
}
