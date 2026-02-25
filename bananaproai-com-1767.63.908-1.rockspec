rockspec_format = "3.0"
package = "bananaproai-com"
version = "1767.63.908-1"
source = {
   url = "git+https://github.com/qy-upup/bananaproai-com.git",
   tag = "v1767.63.908"
}
description = {
   summary = "High-performance AI bananaproai com for bananaproai.com/",
   detailed = [[
      luarocks install bananaproai-com
      local bananaproai = require("bananaproai-com")
      local response = bananaproai.api_call({
      endpoint = "/data/example",
      method = "GET",
      params = { key = "value" }
      })
      if response.success then
      print("Data:", response.data)
      else
      print("Error:", response.error)
      end
      local bananaproai = require("bananaproai-com")
      bananaproai.set_api_key("YOUR_API_KEY") -- Replace with your actual API key
      local response = bananaproai.api_call({
   ]],
   homepage = "https://bananaproai.com/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "bananaproai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["bananaproai-com"] = "src/init.lua"
   }
}
