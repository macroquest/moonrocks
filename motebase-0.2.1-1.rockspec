local git_ref = "v0.2.1"
local modrev = "0.2.1"
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
    "luasec >= 1.0",
    "lsqlite3complete >= 0.9",
    "lua-cjson >= 2.1",
    "luafilesystem >= 1.8",
    "lpeg >= 1.0",
    "bcrypt >= 2.3",
}

test_dependencies = {
    "busted",
}

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "motebase-" .. "0.2.1",
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
        ["motebase.parser.core"] = "motebase/parser/core.lua",
        ["motebase.parser.email"] = "motebase/parser/email.lua",
        ["motebase.parser.http"] = "motebase/parser/http.lua",
        ["motebase.parser.ip"] = "motebase/parser/ip.lua",
        ["motebase.parser.mime"] = "motebase/parser/mime.lua",
        ["motebase.parser.multipart"] = "motebase/parser/multipart.lua",
        ["motebase.parser.uri"] = "motebase/parser/uri.lua",
        ["motebase.router"] = "motebase/router.lua",
        ["motebase.server"] = "motebase/server.lua",
        ["motebase.storage"] = "motebase/storage/init.lua",
        ["motebase.storage.local"] = "motebase/storage/local.lua",
        ["motebase.crypto"] = "motebase/crypto/init.lua",
        ["motebase.crypto.hashings_c"] = {
            sources = {
                "motebase/crypto/hashings.c",
                "motebase/crypto/sha256.c",
                "motebase/crypto/hmac_sha256.c",
            },
            incdirs = { "motebase/crypto" },
        },
        ["motebase.utils.log"] = "motebase/utils/log.lua",
        ["motebase.utils.output"] = "motebase/utils/output.lua",
        ["motebase.utils.url"] = "motebase/utils/url.lua",
        ["motebase.query"] = "motebase/query/init.lua",
        ["motebase.query.constants"] = "motebase/query/constants.lua",
        ["motebase.query.expand"] = "motebase/query/expand.lua",
        ["motebase.query.filter"] = "motebase/query/filter.lua",
        ["motebase.query.sort"] = "motebase/query/sort.lua",
        ["motebase.poll"] = "motebase/poll.lua",
        ["motebase.poll_c"] = {
            sources = { "motebase/poll.c" },
        },
        ["motebase.rules"] = "motebase/rules.lua",
        ["motebase.realtime"] = "motebase/realtime/init.lua",
        ["motebase.realtime.broker"] = "motebase/realtime/broker.lua",
        ["motebase.realtime.client"] = "motebase/realtime/client.lua",
        ["motebase.realtime.sse"] = "motebase/realtime/sse.lua",
        ["motebase.mail"] = "motebase/mail.lua",
        ["motebase.oauth"] = "motebase/oauth.lua",
        ["motebase.hooks"] = "motebase/hooks.lua",
        ["motebase.plugin"] = "motebase/plugin.lua",
        ["motebase.routes"] = "motebase/routes/init.lua",
        ["motebase.routes.health"] = "motebase/routes/health.lua",
        ["motebase.routes.collections"] = "motebase/routes/collections.lua",
        ["motebase.routes.records"] = "motebase/routes/records.lua",
        ["motebase.routes.auth"] = "motebase/routes/auth.lua",
        ["motebase.routes.files"] = "motebase/routes/files.lua",
        ["motebase.routes.realtime"] = "motebase/routes/realtime.lua",
        ["motebase.routes.settings"] = "motebase/routes/settings.lua",
        ["motebase.routes.logs"] = "motebase/routes/logs.lua",
        ["motebase.routes.jobs"] = "motebase/routes/jobs.lua",
        ["motebase.routes.crons"] = "motebase/routes/crons.lua",
        ["motebase.admin"] = "motebase/admin/init.lua",
        ["motebase.logs"] = "motebase/logs.lua",
        ["motebase.settings"] = "motebase/settings.lua",
        ["motebase.s3"] = "motebase/s3.lua",
        ["motebase.storage.s3"] = "motebase/storage/s3.lua",
        ["motebase.jobs"] = "motebase/jobs.lua",
        ["motebase.jobs.worker"] = "motebase/jobs/worker.lua",
        ["motebase.cron"] = "motebase/cron.lua",
    },
    install = {
        bin = {
            ["motebase"] = "bin/motebase.lua",
        },
    },
    copy_directories = {
        "motebase/admin",
    },
}
