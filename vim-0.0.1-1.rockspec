rockspec_format = "3.0"
package = "vim"
version = "0.0.1-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/b0257445f82c3a794cd9cb07389ef98dec0b43eb.zip",
	dir = "rime.nvim-b0257445f82c3a794cd9cb07389ef98dec0b43eb/packages/vim",
}

test = {
	type = "busted",
}

build = {
	type = "builtin",
}
