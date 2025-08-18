local git_ref = '1.5.7'
local modrev = git_ref
local specrev = '1'

rockspec_format = '3.0'
package = 'EmmyLuaCodeStyle'
version = modrev .. '-' .. specrev

local repo_url = 'https://github.com/CppCXY/EmmyLuaCodeStyle'

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
  dir = package .. '-' .. modrev,
}

build = {
  type = 'cmake',
  variables = {
    BuildAsLuaLib = 'ON',
    CMAKE_INSTALL_PREFIX = 'build',
  },
  patches = {
      -- https://github.com/CppCXY/EmmyLuaCodeStyle/pull/205
      ["install-lua-module.diff"] = [[
--- old/CodeFormatLib/CMakeLists.txt
+++ new/CodeFormatLib/CMakeLists.txt
@@ -24,9 +24,14 @@ target_sources(CodeFormatLib
         src/LuaCodeFormat.cpp
         src/LuaJIT-Compact.cpp
 )
+set_target_properties(CodeFormatLib PROPERTIES PREFIX "")
 
 if (NOT WIN32)
     target_compile_options(CodeFormatLib PUBLIC -fPIC)
 endif ()
 
 target_link_libraries(CodeFormatLib PUBLIC CodeFormatCore lua54)
+
+install(TARGETS CodeFormatLib
+    LIBRARY DESTINATION lib/lua/5.4
+)
]],
  },
  install = {
    bin = {
      CodeFormat = 'build/bin/CodeFormat',
      CodeFormatServer = 'build/bin/CodeFormatServer',
    },
    lib = {
      code_format = 'build/lib/lua/5.4/code_format.so',
    }
  }
}
