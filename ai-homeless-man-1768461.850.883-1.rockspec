rockspec_format = "3.0"
package = "ai-homeless-man"
version = "1768461.850.883-1"
source = {
   url = "git+https://github.com/gcPC0x/ai-homeless-man.git",
   tag = "v1768461.850.883"
}
description = {
   summary = "High-performance AI ai homeless man for supermaker.ai/blog/how-to-do-ai-homeless-man-to-prank-your-friends-family-tiktok-viral-tutorial/",
   detailed = [[
      luarocks install ai-homeless-man
      local HomelessMan = require("ai-homeless-man")
      local homeless_man = HomelessMan.new({
      name = "John Doe",
      age = 55,
      location = "Downtown Park"
      })
      print(homeless_man:greet()) -- Output: "Excuse me, do you have any spare change?"
      local action = homeless_man:perform_action()
      print("Action performed:", action) -- Output: Action performed: Searching for food.
      local HomelessMan = require("ai-homeless-man")
      local homeless_man = HomelessMan.new({
      name = "Jane Smith",
      age = 48,
      location = "City Center"
   ]],
   homepage = "https://supermaker.ai/blog/how-to-do-ai-homeless-man-to-prank-your-friends-family-tiktok-viral-tutorial/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "ai", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["ai-homeless-man"] = "src/init.lua"
   }
}
