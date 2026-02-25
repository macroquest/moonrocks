package = "enkoder"
version = "1.0-0"
source = {
	url = "git+https://github.com/RixInGithub/enkoder.git"
}
description = {
	summary = "",
	homepage = "https://github.com/RixInGithub/enkoder",
	license = "AGPL-v3.0"
}
build = {
	type = "builtin",
	modules = {
		enkoder = "init.lua"
	}
}
dependencies = {
	"lua >= 5.3"
}