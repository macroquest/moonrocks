local git_ref = "v1.0.0"
local modrev = "1.0.0"
local specrev = "1"

local repo_url = "https://github.com/ambaradan/nvim-rockydocs"

rockspec_format = "3.0"
package = "nvim-rockydocs"
version = modrev .. "-" .. specrev

description = {
	summary = "Neovim plugin for MkDocs integration with virtual environment management",
	detailed = [[
RockyDocs is a Neovim plugin specifically designed for authoring and maintaining
Rocky Linux documentation projects. Key integration features include:

- Official Rocky Linux Documentation Theme support
- Preconfigured templates matching Rocky Linux documentation standards
- Integrated MkDocs development environment with Rocky Linux brand guidelines
- Preinstalled Rocky Linux documentation dependencies
- Custom mkdocs.yml templates with Rocky Linux configuration
- Security-hardened virtual environments
]],
	labels = { "neovim" },
	homepage = "https://github.com/ambaradan/nvim-rockydocs",
	license = "MIT",
}

dependencies = { "lua >= 5.1" }

test_dependencies = {}

source = {
	url = repo_url .. "/archive/" .. git_ref .. ".zip",
	dir = "nvim-rockydocs-" .. "1.0.0",
}

if modrev == "scm" or modrev == "dev" then
	source = {
		url = repo_url:gsub("https", "git"),
	}
end

build = {
	type = "builtin",
	copy_directories = { "doc", "plugin" },
}
