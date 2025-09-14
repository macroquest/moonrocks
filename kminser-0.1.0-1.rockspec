
package = "kminser"
version = "0.1.0-1"

description = {
	summary = "Data serialization with minification.",
	detailed = [[
		This module contains functions to serialize values to strings, and
		deserialize these strings back to values. It is able to serialize
		strings, numbers, booleans, nil values, and tables.
	]],
	license = "MIT",
	homepage = "https://codeberg.org/diegomartinez/kminser",
}

source = {
	url = "git+https://codeberg.org/diegomartinez/kminser.git",
	tag = "0.1.0",
}

dependencies = {
	"lua >= 5.1, < 5.5",
}

build = {
	type = "builtin",
	modules = {
		["kminser"] = "kminser.lua",
	},
}
