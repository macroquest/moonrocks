rockspec_format = "3.0"
package = "luarocks-build-l3build"
version = "0.0.1-1"

description = {
	summary = "Build lua rock file by l3build's build.lua",
	detailed = "Make TeX ecosystem available for lua ecosystem",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/luarocks-build-l3build.md.html",
	maintainer = "Wu",
	labels = {
		"texmf",
	},
}

dependencies = {
	"lua>=5.1",
	"l3build==2024.10.16",
	"luarocks==3.12.2",
}

test_dependencies = {
	"latex-base==2025.06.01",
	"luatex==0.3.11",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/bb2f102137b4b7b8a5b64c3a9c22ebbe20b317d8.zip",
	dir = "texrocks-bb2f102137b4b7b8a5b64c3a9c22ebbe20b317d8/packages/luarocks-build-l3build",
}

test = {
	type = "command",
	flags = {
		"--lua-version=5.3",
		"--tree=.lux",
		"build",
		"--deps-mode=none",
		"../../rockspecs/hyperref-7.01-15.rockspec",
	},
	command = "luarocks",
}

build = {
	type = "builtin",
}
