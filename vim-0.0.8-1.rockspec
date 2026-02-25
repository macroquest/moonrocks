rockspec_format = "3.0"
package = "vim"
version = "0.0.8-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/3cec8f3142dd42038b4a271f3d5cb0cb82cf0e80.zip",
	dir = "rime.nvim-3cec8f3142dd42038b4a271f3d5cb0cb82cf0e80/packages/vim",
}

build = {
	type = "builtin",
}
