rockspec_format = "3.0"
package = "ime"
version = "0.0.3-1"

description = {
	summary = "A library related to input method engine for neovim",
	detailed = "rime.nvim, fcitx5-ui.nvim and ime.nvim depend on it",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/ime.nvim",
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
	url = "https://github.com/rimeinn/ime.nvim/archive/0.0.3.zip",
	dir = "ime.nvim-0.0.3/packages/ime",
}

test = {
	type = "busted",
}

build = {
	type = "builtin",
}
