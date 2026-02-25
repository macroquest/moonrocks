rockspec_format = "3.0"
package = "mega.argparse"
version = "0.0.1-1"

description = {
	summary = "A library to wrap argparse and mega.cmdparse",
	detailed = "create both argparse.Parser and mega.cmdparse.Parser at the same code",
	license = "GPL-3.0",
	homepage = "https://github.com/Freed-Wu/git2.nvim/tree/main/packages/mega.argparse",
	maintainer = "Wu",
	labels = {
		"argparse",
		"neovim",
	},
}

dependencies = {
	"lua>=5.1",
	"mega.cmdparse>=1.2.1",
	"argparse>=0.0.1",
}

source = {
	url = "https://github.com/Freed-Wu/git2.nvim/archive/1667fd10ba88ef659d8a72a51acbc911f5a95cac.zip",
	dir = "git2.nvim-1667fd10ba88ef659d8a72a51acbc911f5a95cac/packages/mega.argparse",
}

build = {
	type = "builtin",
}
