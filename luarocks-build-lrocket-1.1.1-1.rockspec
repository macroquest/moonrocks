package = 'luarocks-build-lrocket'
version = '1.1.1-1'
source = {
	url = 'https://codeberg.org/lrocket/luarocks-build-lrocket/archive/v1.1.1.zip',
	dir = 'luarocks-build-lrocket'
}
description = {
	homepage = 'https://codeberg.org/lrocket/luarocks-build-lrocket',
	license = 'MIT'
}
build = {
	type = 'lr-hooks',
	modules = {
		['luarocks.build.lrocket'] = 'luarocks/build/lrocket.lua',
		['luarocks.hooks.50-lrocket-build'] = 'luarocks/hooks/hook-build.lua'
	}
}
dependencies = {
	'luarocks-build-lr-hooks ~> 2'
}
