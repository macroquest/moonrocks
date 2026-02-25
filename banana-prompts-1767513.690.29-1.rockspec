rockspec_format = "3.0"
package = "banana-prompts"
version = "1767513.690.29-1"
source = {
   url = "git+https://github.com/qy-upup/banana-prompts.git",
   tag = "v1767513.690.29"
}
description = {
   summary = "High-performance AI banana prompts for bananaproai.com/banana-prompts/",
   detailed = [[
      luarocks install banana-prompts
      local prompts = require "banana-prompts"
      local prompt = prompts.build("Translate the following to French: {{text}}", { text = "Hello, world!" })
      print(prompt) -- Output: Translate the following to French: Hello, world!
      local prompts = require "banana-prompts"
      local template = "Generate a {{type}} poem about {{subject}}."
      local data = { type = "haiku", subject = "autumn leaves" }
      local prompt = prompts.build(template, data)
      print(prompt) -- Output: Generate a haiku poem about autumn leaves.
      local prompts = require "banana-prompts"
      local template = "Summarize the following text: {{text}}"
      local data = { text = "Long and complex document..." }
      -- Cache the prompt based on the template and data.
      local prompt = prompts.cache(template, data, function(template, data)
      -- This function will only be called the first time for a given template and data.
   ]],
   homepage = "https://bananaproai.com/banana-prompts/",
   license = "MIT",
   labels = { "ai", "integration", "utility", "banana", "video-generator" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["banana-prompts"] = "src/init.lua"
   }
}
