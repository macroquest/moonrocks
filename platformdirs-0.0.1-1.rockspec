rockspec_format = "3.0"
package = "platformdirs"
version = "0.0.1-1"

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
	"luafilesystem>=1.8.0",
	"luaposix>=36",
}

source = {
	url = "https://github.com/rimeinn/rime.nvim/archive/0d22c900de4b6adbc95921a0cd45193f96d92c28.zip",
	dir = "rime.nvim-0d22c900de4b6adbc95921a0cd45193f96d92c28/packages/platformdirs",
}

build = {
	type = "builtin",
}
