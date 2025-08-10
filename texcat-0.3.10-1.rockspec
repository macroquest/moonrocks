rockspec_format = "3.0"
package = "texcat"
version = "0.3.10-1"

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
	"argparse==0.7.1",
	"luafilesystem==1.8.0",
	"lua-template==1.0.0",
	"nvim-textmate==0.0.1",
	"warna==0.3.5",
	"ltreesitter==0.1.0",
}

test_dependencies = {
	"l3build==2024.10.16",
	"fancyvrb==4.6",
	"tree-sitter-lua==0.0.36",
	"graphics-cfg==0.0.1",
	"toml2lua==3.0.0",
	"lualatex==0.3.10",
	"tree-sitter-latex==0.0.38",
	"vscode-extensions==1.102.3",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.10.zip",
	dir = "texrocks-0.3.10/packages/texcat",
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
