rockspec_format = "3.0"
package = "luarocks-build-l3build"
version = "0.3.12-1"

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
	"luatex==0.3.12",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/0.3.12.zip",
	dir = "texrocks-0.3.12/packages/luarocks-build-l3build",
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
