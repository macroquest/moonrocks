package = "rubika"
version = "1.0-1"
source = {
    url = "git://github.com/Daniyel-Vanguard/rubika-lua.git"  
}
description = {
    summary = "A simple math library for Lua",
    detailed = [[
        This library provides basic mathematical operations
        with additional features like logging and validation.
    ]],
    homepage = "https://github.com/Daniyel-Vanguard/rubika-lua",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        rubika = "rubika.lua"
    }
}