rockspec_format = "3.0"
package = "texcat"
version = "0.3.12-2"

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
	"lua >= 5.1",
	"vim >= 0.0.4",
	"luafilesystem == 1.8.0",
	"argparse == 0.7.1",
	"nvim-textmate == 0.0.1",
	"ltreesitter == 0.1.0",
	"warna == 0.3.5",
	"lua-template == 1.0.0",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/1da1090494fc6fbcf6b6efd972a8b9f521221e83.zip",
	dir = "texrocks-1da1090494fc6fbcf6b6efd972a8b9f521221e83/packages/texcat",
}

build = {
	type = "builtin",
}
