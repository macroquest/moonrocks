rockspec_format = "3.0"
package = "vim"
version = "0.0.5-1"

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
	"lua >= 5.1",
	"luafilesystem >= 1.8.0",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/416c3145457de1183a60ef8bc76088b86027963d.zip",
	dir = "rime.nvim-416c3145457de1183a60ef8bc76088b86027963d/packages/vim",
}

build = {
	type = "builtin",
}
