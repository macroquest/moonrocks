package = "colorize"
version = "0.1-0"
source = {
    url = "git+https://www.github.com/code-nuage/colorize.git",
    tag = "v0.1"
}
description = {
    homepage = "https://www.github.com/code-nuage/colorize",
    license = "MIT"
}
dependencies = {}
build = {
    type = "builtin",
    modules = {
        colorize = "src/main.lua",
    }
}

