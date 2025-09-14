
package = "klass"
version = "0.1.0-1"

description = {
	summary = "Minimalistic class system.",
	license = "MIT",
	homepage = "https://codeberg.org/diegomartinez/klass",
}

source = {
   url = "git+https://codeberg.org/diegomartinez/klass.git",
   tag = "0.1.0",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",
	modules = {
		["klass"] = "klass.lua",
	},
}
