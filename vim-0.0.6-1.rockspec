rockspec_format = "3.0"
package = "vim"
version = "0.0.6-1"

description = {
	summary = "use vim.fs, vim.filetype, vim.uri, ... outside of neovim",
	detailed = "See :help vim.XXX",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/rime.nvim/tree/main/packages/vim",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua>=5.1",
	"luafilesystem>=1.8.0",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/06059047573ffc89dd6813ff2f343f1dfc7e75b0.zip",
	dir = "rime.nvim-06059047573ffc89dd6813ff2f343f1dfc7e75b0/packages/vim",
}

build = {
	type = "builtin",
}
