package = "kong-auto-https"
version = "0.0.1-4"
supported_platforms = {"linux", "macosx"}

source = {
    url = "http://github.com/davidqhr/kong-auto-https.git",
    branch = "master"
}

description = {
  summary = "kong plugin http to https",
  homepage = "http://getkong.org",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-auto-https.handler"] = "kong/plugins/kong-auto-https/handler.lua",
        ["kong.plugins.kong-auto-https.schema"] = "kong/plugins/kong-auto-https/schema.lua",
    }
}

