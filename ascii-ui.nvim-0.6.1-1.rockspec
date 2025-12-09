rockspec_format = "3.0"
package = "ascii-ui.nvim"
version = "0.6.1-1"

description = {
	summary = "A WIP extensible ui framework with no non-sense apis (hopefully) for nvim.",
	license = "MIT",
	maintainer = "rcasia",
}

dependencies = {
	"lua==5.1",
	"plenary.nvim==scm",
}

source = {
	url = "https://github.com/rcasia/ascii-ui.nvim/archive/refs/tags/v0.6.1.zip",
}

build = {
	type = "builtin",
}
