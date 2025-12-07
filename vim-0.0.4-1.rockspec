rockspec_format = "3.0"
package = "vim"
version = "0.0.4-1"

description = {
	summary = "use vim.fs and vim.filetype outside of neovim",
	detailed = "See :help vim.fs and :help vim.filetype",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/rime.nvim/tree/main/packages/vim",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"luafilesystem >= 1.8.0",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/13ce26fdb5298d7f671bd2fe92acf4b1b9d13a6b.zip",
	dir = "rime.nvim-13ce26fdb5298d7f671bd2fe92acf4b1b9d13a6b/packages/vim",
}

build = {
	type = "builtin",
}
