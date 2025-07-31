rockspec_format = "3.0"
package = "lx-test-a"
version = "0.1.0-1"

description = {
	summary = "",
	maintainer = "Wu",
	labels = {
		"",
	},
}

dependencies = {
	"lua>=5.1",
}

source = {
	url = "https://github.com/user-attachments/files/21326689/test.zip",
}

build = {
	type = "builtin",
	install = {
		conf = {
			test = "test",
		},
	},
}
