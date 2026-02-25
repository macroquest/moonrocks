package = "theta"
version = "0.1-1"
source = {
	url = "git+https://codeberg.org/tavaski/theta.git",
}
description = {
	summary = "A math evaluation engine",
	detailed = "A math evaluation engine",
	license = "GNUv3",
}
dependencies = {
	"lua >= 5.4",
	"luarocks-build-rust-mlua",
}
build = {
	type = "rust-mlua",
	modules = {
		["theta"] = "theta",
		"theta",
	},
	default_features = false,
	features = { "lua54" },
}
