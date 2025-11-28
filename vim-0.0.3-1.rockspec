rockspec_format = "3.0"
package = "vim"
version = "0.0.3-1"

description = {
	summary = "use vim.fs outside of neovim",
	detailed = "See :help vim.fs",
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
	url = "https://github.com/rimeinn/rime.nvim/archive/d8e27ca6738361413f07ec30db4d0d3b58072d87.zip",
	dir = "rime.nvim-d8e27ca6738361413f07ec30db4d0d3b58072d87/packages/vim",
}

test = {
	type = "busted",
}

build = {
	type = "builtin",
}
