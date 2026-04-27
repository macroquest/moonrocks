rockspec_format = "3.0"
package = "kling4-app"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/kling4_app/kling4-app-0.1.0.tar.gz",
  dir = "kling4-app-0.1.0"
}
description = {
  summary = "Kling 4.0 official website backlink rock.",
  detailed = "Kling 4.0 official website backlink rock.",
  homepage = "https://www.kling4.app",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["kling4_app"] = "src/kling4_app.lua"
  }
}
