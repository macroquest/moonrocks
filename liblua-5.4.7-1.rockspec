package = 'liblua'
version = '5.4.7-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-liblua.git',
	tag = 'v5.4.7'
}
description = {
	summary = 'The lua library - packaged in a rock',
	homepage = 'https://codeberg.org/leso-kn/lua-liblua',
	license = 'MIT'
}
build = {
	type = 'make',
	variables = {
		CFLAGS = '$(CFLAGS)',
		PREFIX = '$(PREFIX)'
	}
}
