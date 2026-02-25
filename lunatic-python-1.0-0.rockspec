package = 'lunatic-python'
version = '1.0-0'
source = {
	url = 'git+https://github.com/leso-kn/lunatic-python',
	branch = 'v1.0'
}
description = {
	summary = 'Two-way bridge between Python and Lua',
	homepage = 'https://github.com/bastibe/lunatic-python',
	license = 'MIT'
}
build = {
	type = 'make',
	makefile = 'Makefile.luarocks',
	variables = {
		LIBDIR = '$(LIBDIR)'
	}
}
