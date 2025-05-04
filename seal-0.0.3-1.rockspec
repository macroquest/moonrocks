local git_ref = 'v0.0.3'
local modrev = '0.0.3'
local specrev = '1'

local repo_url = 'https://github.com/EmmaTheMartian/seal'

rockspec_format = '3.0'
package = 'seal'
version = modrev ..'-'.. specrev

description = {
	summary = "A metaprogrammable markup language designed for making simple websites.",
	homepage = "https://github.com/EmmaTheMartian/seal",
	maintainer = "EmmaTheMartian <emmathemartian@gmail.com>",
	license = "MIT",
	labels = {
		"seal",
		"static-site-generator",
		"ssg",
		"metaprogramming",
		"markup-language",
		"lua",
		"moonscript",
		"fennel",
	},
}

dependencies = {
	"lua >= 5.1",
	"argparse",
	"luafilesystem",
	"moonscript",
}

source = {
	url = repo_url .. '/archive/' .. git_ref .. '.zip',
	dir = 'seal-' .. '0.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
	source = {
		url = repo_url:gsub('https', 'git')
	}
end

build = {
	type = "builtin",
	modules = {
		seal = "src/seal.lua",
	},
	install = {
		bin = { "bin/seal" },
	},
}
