rockspec_format = "3.0"
package = "texcat"
version = "0.3.12-1"

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
	"ltreesitter==0.1.0",
	"nvim-textmate==0.0.1",
	"warna==0.3.5",
	"lua-template==1.0.0",
	"argparse==0.7.1",
	"luafilesystem==1.8.0",
}

test_dependencies = {
	"tree-sitter-latex==0.0.38",
	"fancyvrb==4.6",
	"tree-sitter-lua==0.0.36",
	"l3build==2024.10.16",
	"toml2lua==3.0.0",
	"lualatex==0.3.12",
	"graphics-cfg==0.0.1",
	"vscode-extensions==1.102.3",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/texcat",
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
}
