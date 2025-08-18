local git_ref = '3.15.0'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'lua-language-server'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/LuaLS/lua-language-server'

description = {
  summary = 'A language server that offers Lua language support - programmed in Lua',
  detailed =
  [[The Lua language server provides various language features for Lua to make development easier and faster. With nearly a million installs in Visual Studio Code, it is the most popular extension for Lua language support.]],
  labels = { 'lua', 'language-server', 'lpeg', 'hacktoberfest', 'lsp', 'lsp-server', 'lpeglabel' },
  homepage = repo_url,
  license = 'MIT'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev .. '/script',
}

dependencies = { 'lpeglabel', 'EmmyLuaCodeStyle' }

build = {
  type = 'builtin',
  patches = {
      ["fix-main.lua.diff"] = [[
--- old/../main.lua
+++ new/../main.lua
@@ -1,3 +1,4 @@
+#!/usr/bin/env bee
 local fs      = require 'bee.filesystem'
 local util    = require 'utility'
 local version = require 'version'
]],
  },
  install = {
    bin = {
      ['lua-language-server'] = '../main.lua',
    }
  }
}

deploy = {
  wrap_bin_scripts = false
}
