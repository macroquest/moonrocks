package = "fennel"
local fennel_version = "1.6.0"
version = (fennel_version .. "-" .. "1")
source = { url = "git://github.com/bakpakin/Fennel", tag = fennel_version }
description = {
	summary = "A lisp that compiles to Lua",
	detailed = ("Get your parens on--write macros and " .. "homoiconic code on the Lua runtime!"),
	license = "MIT",
	homepage = "https://fennel-lang.org",
	maintainer = "Jesse Wertheim <jaawerth@proton.me>",
}
dependencies = { "lua >= 5.1" }
build = {
	type = "make",
	variables = { CFLAGS = "$(CFLAGS)", LUA = "$(LUA)", LUA_INC_DIR = "$(LUA_INCDIR)" },
	install_variables = {
		PREFIX = "$(PREFIX)",
		LUA_LIB_DIR = "$(LUADIR)",
		BIN_DIR = "$(PREFIX)/bin",
		MAN_DIR = "$(PREFIX)/doc",
	},
}
return nil
