rockspec_format = "3.0"
package = "nano-banana-2"
version = "1767.173.745-1"
source = {
   url = "git+https://github.com/qy-upup/nano-banana-2.git",
   tag = "v1767.173.745"
}
description = {
   summary = "High-performance AI nano banana 2 for supermaker.ai/image/nano-banana-2/",
   detailed = [[
      nano-banana-2
      Professional integration for https://supermaker.ai/image/nano-banana-2/.
      Installation
      License
      MIT
   ]],
   homepage = "https://supermaker.ai/image/nano-banana-2/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "nano", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["nano-banana-2"] = "src/init.lua"
   }
}
