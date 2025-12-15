rockspec_format = "3.0"
package = "ime"
version = "0.0.7-1"

description = {
	summary = "A library related to input method engine for neovim",
	detailed = "rime.nvim, fcitx5-ui.nvim and ime.nvim depend on it",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/rime.nvim/tree/main/packages/ime",
	maintainer = "Wu",
	labels = {
		"neovim",
		"ime",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/bcdd9c7f44d994fa89a78791637a8e6c3b3ff609.zip",
	dir = "rime.nvim-bcdd9c7f44d994fa89a78791637a8e6c3b3ff609/packages/ime",
}

build = {
	type = "builtin",
}
