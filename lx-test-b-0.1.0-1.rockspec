
rockspec_format = "3.0"
package = "lx-test-b"
version = "0.1.0-1"

description = {
summary = "",
maintainer = "Wu",
labels = {
"",
},
}

dependencies = {
"lua >=5.1",
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