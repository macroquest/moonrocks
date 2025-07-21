
rockspec_format = "3.0"
package = "lx-test-d"
version = "0.1.0-1"

description = {
summary = "",
maintainer = "neorocks",
labels = {
"",
},
}

dependencies = {
"lua >=5.1",
}
build_dependencies = {
"lx-test-c",
}

source = {
url = "https://github.com/user-attachments/files/21326689/test.zip",
dir = ".",
}

deploy = {
wrap_bin_scripts = false,
}

build = {
type = "command",
build_command = "C",
install = {
bin = {
B = "test",
},
},
}
