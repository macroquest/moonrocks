local git_ref = "v0.1.4"
local modrev = "0.1.4"
local specrev = "1"

local repo_url = "https://github.com/pgagnidze/lnko"

rockspec_format = "3.0"
package = "lnko"
version = modrev .. "-" .. specrev

description = {
    summary = "A symlink farm manager, simpler alternative to GNU Stow",
    detailed = [[
lnko is a symlink farm manager that helps organize dotfiles and
configuration files. It creates symlinks from a source directory
to a target directory, with support for tree folding, conflict
handling, and two-phase execution.]],
    labels = { 'dotfiles-manager', 'gnu-stow', 'symlinks-manager' } ,
    homepage = "https://github.com/pgagnidze/lnko",
    license = 'GPL-3.0'
}

dependencies = {
    "lua >= 5.1, < 5.5",
    "luafilesystem >= 1.8.0",
}

test_dependencies = {
    "busted",
}

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "lnko-" .. "0.1.4",
}

if modrev == "scm" or modrev == "dev" then
    source = {
        url = repo_url:gsub("https", "git")
    }
end

build = {
    type = "builtin",

    modules = {
        ["lnko"] = "lnko/init.lua",
        ["lnko.fs"] = "lnko/fs.lua",
        ["lnko.plan"] = "lnko/plan.lua",
        ["lnko.tree"] = "lnko/tree.lua",
        ["lnko.output"] = "lnko/output.lua",
        ["lnko.utils"] = "lnko/utils.lua",
    },

    install = {
        bin = {
            ["lnko"] = "bin/lnko.lua",
        }
    },
}
