local git_ref = "v0.1.2"
local modrev = "0.1.2"
local specrev = "1"

local repo_url = "https://github.com/Owloops/motebase"

rockspec_format = "3.0"
package = "motebase"
version = modrev .. "-" .. specrev

description = {
    summary = "Tiny self-hosted PocketBase alternative",
    detailed = [[
MoteBase is a tiny self-hosted PocketBase alternative with dynamic collections,
JWT authentication, and SQLite storage.]],
    labels = { },
    homepage = "https://github.com/Owloops/motebase",
    license = 'MIT'
}

dependencies = {
    "lua >= 5.1, < 5.5",
    "luasocket >= 3.0",
    "lsqlite3complete >= 0.9",
    "lua-cjson >= 2.1",
    "luafilesystem >= 1.8",
    "lpeg >= 1.0",
}

test_dependencies = {
    "busted",
}

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "motebase-" .. "0.1.2",
}

if modrev == "scm" or modrev == "dev" then
    source = {
        url = repo_url:gsub("https", "git")
    }
end

build = {
    type = "builtin",
    modules = {
        ["motebase"] = "motebase/init.lua",
        ["motebase.auth"] = "motebase/auth.lua",
        ["motebase.collections"] = "motebase/collections.lua",
        ["motebase.db"] = "motebase/db.lua",
        ["motebase.files"] = "motebase/files.lua",
        ["motebase.jwt"] = "motebase/jwt.lua",
        ["motebase.middleware"] = "motebase/middleware.lua",
        ["motebase.parser"] = "motebase/parser/init.lua",
        ["motebase.parser.email"] = "motebase/parser/email.lua",
        ["motebase.parser.http"] = "motebase/parser/http.lua",
        ["motebase.parser.multipart"] = "motebase/parser/multipart.lua",
        ["motebase.parser.primitives"] = "motebase/parser/primitives.lua",
        ["motebase.router"] = "motebase/router.lua",
        ["motebase.schema"] = "motebase/schema.lua",
        ["motebase.server"] = "motebase/server.lua",
        ["motebase.storage"] = "motebase/storage/init.lua",
        ["motebase.storage.local"] = "motebase/storage/local.lua",
        ["motebase.crypto"] = "motebase/crypto/init.lua",
        ["motebase.crypto.bit"] = "motebase/crypto/bit.lua",
        ["motebase.crypto.hmac"] = "motebase/crypto/hmac.lua",
        ["motebase.crypto.sha256"] = "motebase/crypto/sha256.lua",
        ["motebase.utils.log"] = "motebase/utils/log.lua",
        ["motebase.utils.output"] = "motebase/utils/output.lua",
    },
    install = {
        bin = {
            ["motebase"] = "bin/motebase.lua",
        },
    },
}
