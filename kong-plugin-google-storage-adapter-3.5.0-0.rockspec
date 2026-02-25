local plugin_name = "google-storage-adapter"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "3.5.0"
local rockspec_revision = "0"
local full_version = package_version .. "-" .. rockspec_revision

package = package_name
version = full_version
supported_platforms = { "linux", "macosx" }
source = {
  url = "https://storage.googleapis.com/cloud-site-builder-bucket-prod/" .. package_name .. "-" .. full_version .. ".tar.gz"
}

description = {
  summary = "A Kong plugin that adapts Google Storage",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..plugin_name..".access"] = "kong/plugins/"..plugin_name.."/access.lua",
    ["kong.plugins."..plugin_name..".auth"] = "kong/plugins/"..plugin_name.."/auth.lua",
    ["kong.plugins."..plugin_name..".handler"] = "kong/plugins/"..plugin_name.."/handler.lua",
    ["kong.plugins."..plugin_name..".headers"] = "kong/plugins/"..plugin_name.."/headers.lua",
    ["kong.plugins."..plugin_name..".schema"] = "kong/plugins/"..plugin_name.."/schema.lua",
    ["kong.plugins."..plugin_name..".path.resolve"] = "kong/plugins/"..plugin_name.."/path/resolve.lua",
    ["kong.plugins."..plugin_name..".path.resolve-old"] = "kong/plugins/"..plugin_name.."/path/resolve-old.lua",
    ["kong.plugins."..plugin_name..".path.utils"] = "kong/plugins/"..plugin_name.."/path/utils.lua",
  }
}
