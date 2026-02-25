rockspec_format = "3.0"
package = "nano-banana-pro-prompt"
version = "1768559.175.715-1"
source = {
   url = "git+https://github.com/gcPC0x/nano-banana-pro-prompt.git",
   tag = "v1768559.175.715"
}
description = {
   summary = "High-performance AI nano banana pro prompt for supermaker.ai/blog/nano-banana-pro-prompt-use-cases-ready-to-copy-paste/",
   detailed = [[
      luarocks install nano-banana-pro-prompt
      local prompt_builder = require("nano-banana-pro-prompt")
      local document = "This is a long document about the history of bananas. It covers various aspects, including their origin, cultivation, and nutritional value."
      local prompt = prompt_builder:new()
      :add_instruction("Summarize the following document in three sentences:")
      :add_context(document)
      :build()
      print(prompt)
      -- Expected output: "Summarize the following document in three sentences:\n\nThis is a long document about the history of bananas. It covers various aspects, including their origin, cultivation, and nutritional value."
      -- (Then, you would pass this prompt to your AI model)
      local prompt_builder = require("nano-banana-pro-prompt")
      local topic = "A futuristic city powered by bananas"
      local prompt = prompt_builder:new()
      :add_instruction("Write a short story (approximately 100 words) about:")
      :add_context(topic)
   ]],
   homepage = "https://supermaker.ai/blog/nano-banana-pro-prompt-use-cases-ready-to-copy-paste/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "nano", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["nano-banana-pro-prompt"] = "src/init.lua"
   }
}
