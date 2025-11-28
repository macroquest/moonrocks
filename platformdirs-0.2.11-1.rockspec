rockspec_format = "3.0"
package = "platformdirs"
version = "0.2.11-1"

description = {
	summary = "A lua implementation of platformdirs",
	detailed = "Respect the standards of Unix XDG, Android, macOS, Windows",
	license = "GPL-3.0",
	homepage = "https://github.com/rimeinn/rime.nvim/tree/main/packages/platformdirs",
	maintainer = "Wu",
	labels = {
		"xdg",
	},
}

dependencies = {
	"lua>=5.1",
	"vim>=0.0.1",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/0.2.11.zip",
	dir = "rime.nvim-0.2.11/packages/platformdirs",
}

test = {
	type = "busted",
}

build = {
	type = "builtin",
}
