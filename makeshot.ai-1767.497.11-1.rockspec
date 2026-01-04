rockspec_format = "3.0"
package = "makeshot.ai"
version = "1767.497.11-1"
source = {
   url = "git+https://github.com/qy-upup/makeshot.ai.git",
   tag = "v1767.497.11"
}
description = {
   summary = "High-performance AI makeshot.ai for makeshot.ai/",
   detailed = [[
      luarocks install makeshot
      local makeshot = require("makeshot")
      local screenshot_data, err = makeshot.capture_page {
      url = "https://makeshot.ai/",
      full_page = true
      }
      if err then
      print("Error capturing screenshot: " .. err)
      else
      -- Save the screenshot data to a file (e.g., screenshot.png)
      local file = io.open("screenshot.png", "wb")
      file:write(screenshot_data)
      file:close()
      print("Screenshot saved to screenshot.png")
      end
   ]],
   homepage = "https://makeshot.ai/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "makeshot.ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["makeshot.ai"] = "src/init.lua"
   }
}
