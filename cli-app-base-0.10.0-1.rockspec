---@diagnostic disable: lowercase-global
package = "cli-app-base"
version = "0.10.0-1"
source = {
  url = "git+https://gitlab.com/lua_rocks/cli-app-base.git",
  tag = "v0.10.0"
}

description = {
  summary = "library to create cli-apps based on cmd4lua and alogger",
  detailed = [[
]],
  homepage = "https://gitlab.com/lua_rocks/cli-app-base",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  'alogger >= 0.6',
  'cmd4lua >= 0.8',
  -- optional: 'inspect'
  -- optional: 'luv'
}

build = {
  type = "builtin",
  modules = {
    ["cli-app-base"] = "src/cli-app-base.lua",
    ["cli-app-base.builtin-cmds"] = "src/cli-app-base/builtin-cmds.lua",
    ---deprecated!
    ["cli-app-base.http"] = "src/cli-app-base/http.lua",
    ["cli-app-base.http_client"] = "src/cli-app-base/http_client.lua",
  }
}
