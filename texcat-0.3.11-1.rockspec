rockspec_format = "3.0"
package = "texcat"
version = "0.3.11-1"

description = {
	summary = "syntax highlight code in LaTeX",
	detailed = "A reimplementation of https://pygments.org/docs/formatters/#LatexFormatter by texlua",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/texcat.md.html",
	maintainer = "Wu",
	labels = {
		"tex",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-template==1.0.0",
	"luafilesystem==1.8.0",
	"nvim-textmate==0.0.1",
	"argparse==0.7.1",
	"ltreesitter==0.1.0",
	"warna==0.3.5",
}

test_dependencies = {
	"fancyvrb==4.6",
	"graphics-cfg==0.0.1",
	"tree-sitter-lua==0.0.36",
	"vscode-extensions==1.102.3",
	"toml2lua==3.0.0",
	"tree-sitter-latex==0.0.38",
	"l3build==2024.10.16",
	"lualatex==0.3.11",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.11.zip",
	dir = "texrocks-0.3.11/packages/texcat",
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
