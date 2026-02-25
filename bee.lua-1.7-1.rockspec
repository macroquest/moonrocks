local git_ref = 'v1.7'
local modrev = git_ref:gsub('^v', '')
local specrev = '1'

rockspec_format = '3.0'
package = 'bee.lua'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/actboy168/luamake'

description = {
  summary = 'Lua runtime and toolset',
  detailed =
  [[Lua runtime for luamake and lua-language-server]],
  labels = {  },
  homepage = 'https://github.com/actboy168/bee.lua',
  license = 'MIT'
}

source = {
  url = repo_url:gsub('^', 'git+'),
  tag = git_ref,
  dir = 'luamake',
}

build = {
  type = 'command',
  patches = {
      ["fix-main.lua.diff"] = [[
--- old/bee.lua/bootstrap/main.lua
+++ new/bee.lua/bootstrap/main.lua
@@ -1,3 +1,6 @@
+package.path = os.getenv'LUA_PATH' or package.path
+package.cpath = os.getenv'LUA_CPATH' or package.cpath
+
 local expr = {}
 
 local i = 1
]],
  },
  build_command = [[
    compile/build.sh
]],
  install = {
    bin = {
      bootstrap = 'luamake',
      ['main.lua'] = 'bee.lua/bootstrap/main.lua',
    }
  }
}

deploy = {
  wrap_bin_scripts = false
}
