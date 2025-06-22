package = 'libluajit'
version = '2.1-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-liblua.git',
	tag = 'jit-v2.1'
}
description = {
	summary = 'The luajit library - packaged in a rock',
	homepage = 'https://codeberg.org/leso-kn/lua-liblua',
	license = 'MIT'
}
build = {
	type = 'make',
	variables = {
		CFLAGS = '$(CFLAGS)',
		JIT = '1',
		PREFIX = '$(PREFIX)'
	}
}
