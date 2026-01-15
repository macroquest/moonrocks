package = "luahuml"
version = "0.1-1"
source = {
	url = "git://github.com/Kyle-McDangersword/luahuml",
	tag = "v0.1.1"
	}
description = {
	summary = "Huml decoder and encoder",
	detailed = "This is a module that converts data from Huml to Lua and vice versa.\nInformation about Huml can be found at huml.io.",
	license = "MIT"
	}
dependencies = {
	"lua >= 5.1, < 5.6"
	}
build = {
	type = "builtin",
	modules = {
		["luahuml.init"] = "init.lua",
		["luahuml.v0_2_0"] = "v0_2_0.lua"
		}
	}