rockspec_format = "3.0"
package = "sm-chat"
version = "1767581.686.835-1"
source = {
   url = "git+https://github.com/qy-upup/sm-chat.git",
   tag = "v1767581.686.835"
}
description = {
   summary = "High-performance AI sm chat for supermaker.ai/chat/",
   detailed = [[
      luarocks install sm-chat
      local chat = require("sm-chat")
      local channel = chat.create_channel("general", "Public channel for general discussions")
      print("Channel ID:", channel.id)
      print("Channel Name:", channel.name)
      print("Channel Description:", channel.description)
      local chat = require("sm-chat")
      local channel = chat.create_channel("support", "Customer support channel")
      local user = { id = "user123", name = "Alice" }
      channel:add_user(user)
      print("User count in channel:", #channel.users)
      local chat = require("sm-chat")
      local channel = chat.create_channel("developers", "Channel for developer discussions")
      local user = { id = "dev456", name = "Bob" }
      local message = channel:send_message(user, "Hello everyone!")
   ]],
   homepage = "https://supermaker.ai/chat/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "sm", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["sm-chat"] = "src/init.lua"
   }
}
