package = 'lua-MessagePack'
version = '0.3.4-1'
source = {
    url = 'http://sites.google.com/site/fperrad/lua-messagepack-0.3.4.tar.gz',
    md5 = 'decc82d7f71b9f937aa4869ade90335b',
    dir = 'lua-MessagePack-0.3.4',
}
description = {
    summary = "a pure Lua implementation of the MessagePack serialization format",
    detailed = [[
        MessagePack is an efficient binary serialization format.

        It lets you exchange data among multiple languages like JSON but it's faster and smaller.
    ]],
    homepage = 'http://fperrad.github.io/lua-MessagePack/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['MessagePack']     = 'src/MessagePack.lua',
    },
    copy_directories = { 'doc', 'test' },
}
