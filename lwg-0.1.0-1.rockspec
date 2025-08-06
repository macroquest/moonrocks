package = 'lwg'
version = '0.1.0-1'
source = {
	url = 'git+https://codeberg.org/leso-kn/lwg',
	tag = 'v0.1.0'
}
description = {
	summary = 'create and manage wireguard networks',
	homepage = 'https://codeberg.org/leso-kn/lwg',
	license = 'MIT'
}
build = {
	type = 'lrocket',
	entrypoint = 'main.lua',
	output = 'bin/lwg'
}
dependencies = {
	'argparse ~> 0.7',
	'sfs ~> 0.2'
}
