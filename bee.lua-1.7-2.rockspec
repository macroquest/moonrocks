local git_ref = '3151c2f7895a615008076c73bbb11ec576800355'
local modrev = '1.7'
local specrev = '2'

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
  -- tag = git_ref,
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
      ["add-bee.diff"] = [[
--- old/LICENSE
+++ new/LICENSE
@@ -1,21 +1,15 @@
-MIT License
-
-Copyright (c) 2018 actboy168
-
-Permission is hereby granted, free of charge, to any person obtaining a copy
-of this software and associated documentation files (the "Software"), to deal
-in the Software without restriction, including without limitation the rights
-to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-copies of the Software, and to permit persons to whom the Software is
-furnished to do so, subject to the following conditions:
-
-The above copyright notice and this permission notice shall be included in all
-copies or substantial portions of the Software.
-
-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-SOFTWARE.
+#!/usr/bin/env lua
+local f = '%q'
+local args = {
+    debug.getinfo(1).source:match("@?(.*/)") .. 'bootstrap',
+    '-e',
+    f:format('package.path=' .. f:format(package.path) .. ';package.cpath=' .. f:format(package.cpath))
+}
+for _, v in ipairs(arg) do
+    table.insert(args, f:format(v))
+end
+local ret = 0
+if os.execute(table.concat(args, ' ')) == nil then
+    ret = 1
+end
+os.exit(ret)
]],
  },
  build_command = [[
    compile/build.sh || true
]],
  install = {
    bin = {
      bee = 'LICENSE',
      bootstrap = 'luamake',
      ['main.lua'] = 'bee.lua/bootstrap/main.lua',
    }
  }
}
