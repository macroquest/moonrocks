rockspec_format = "3.0"
package = "vim"
version = "0.0.2-1"

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
	url = "https://github.com/rimeinn/rime.nvim/archive/01687bf1a9ab1a2bc4966f100f4f08b0ec41341b.zip",
	dir = "rime.nvim-01687bf1a9ab1a2bc4966f100f4f08b0ec41341b/packages/vim",
}

test = {
	type = "busted",
}

build = {
	type = "builtin",
}
