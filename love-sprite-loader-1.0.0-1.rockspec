package = "love-sprite-loader"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/zhuravkovigor/love-sprite-loader.git",
   tag = "v1.0.0"
}
description = {
   summary = "Automatic sprite loader for Love2D",
   detailed = [[
      love-sprite-loader is a library for Love2D that automatically loads
      all images from a specified directory and returns a table with camelCase names.
      
      Features:
      - Automatic conversion of file names from snake_case to camelCase
      - Support for various image formats (PNG, JPG, BMP, TGA)
      - Three loading modes: flat, nested, and single
      - Simple and convenient API
   ]],
   homepage = "https://github.com/zhuravkovigor/love-sprite-loader",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["love-sprite-loader"] = "init.lua"
   }
}
