local plugin_name = "geo-fencing"
local package_name = "geo-fencing"
local package_version = "0.1.0"
local rockspec_revision = "1"

local github_account_name = "msangameshwar"
local github_repo_name = "geo-fencing"
local git_checkout = "dev"


package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout,
}


description = {
  summary = "A Kong plugin for geo-fencing based on client IP location",
  detailed = [[
    This plugin queries an external geo-IP service and blocks or allows requests
    based on country codes configured in the plugin config.
  ]],
  homepage = "https://github.com/msangameshwar/geo-fencing",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "luasocket",
  "luasec",
  "lua-cjson",
  "lua-resty-http >= 0.15"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.geo-fencing.handler"] = "kong/plugins/geo-fencing/handler.lua",
    ["kong.plugins.geo-fencing.schema"] = "kong/plugins/geo-fencing/schema.lua",
  }
}
