rockspec_format = "3.0"
package = "vim"
version = "0.0.7-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/fa35f352b5b78c33d2b88a4f5ee523036b21b3ed.zip",
	dir = "rime.nvim-fa35f352b5b78c33d2b88a4f5ee523036b21b3ed/packages/vim",
}

build = {
	type = "builtin",
}
