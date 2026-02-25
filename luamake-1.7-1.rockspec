local git_ref = 'v1.7'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'luamake'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/actboy168/luamake'

description = {
  summary = 'Create file make.lua to build a project',
  detailed =
  [[luamake

Build your project.

    luamake clean

Clean build output.

    luamake rebuild

Equivalent to luamake clean && luamake

    luamake lua [lua filename]

Run lua file.

    luamake test

Equivalent to luamake lua test.lua
  ]],
  labels = {  },
  homepage = repo_url,
  license = 'MIT'
}

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev .. '/scripts',
}

build = {
  type = 'builtin',
  patches = {
      ["fix-main.lua.diff"] = [[
--- old/../main.lua
+++ new/../main.lua
@@ -1,3 +1,4 @@
-package.procdir = package.cpath:match("(.+)[/][^/]+$")
-package.path = package.procdir.."/scripts/?.lua"
+#!/usr/bin/env bootstrap
+package.procdir = package.cpath:match("(.+)[/][^/]+$") or ""
+-- package.path = package.procdir.."/scripts/?.lua"
 require "main"
]],
  },
  install = {
    bin = {
      luamake = '../main.lua',
    }
  }
}

deploy = {
  wrap_bin_scripts = false
}
