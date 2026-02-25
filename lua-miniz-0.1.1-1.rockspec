package = 'lua-miniz'
version = '0.1.1-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lua-miniz',
	tag = 'v0.1.1'
}
description = {
	homepage = 'https://codeberg.org/leso-kn/lua-miniz',
	license = 'MIT',
	summary = 'The single C source file zlib-replacement library for Lua'
}
build = {
	type = 'builtin',
	modules = {
		miniz = {
			sources = {
				'miniz/lminiz.c',
				'miniz/miniz.c'
			}
		}
	}
}
