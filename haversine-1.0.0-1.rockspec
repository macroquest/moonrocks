package = "haversine"
version = "1.0.0-1"
source = {
   url = "git://github.com/cosme12/haversine.git"
}
description = {
   summary = "Lua module for calculating the distance between two points on the Earth using the Haversine formula",
   detailed = [[
This module provides a function to calculate the great-circle distance between two points on the Earth's surface given their latitude and longitude using the Haversine formula. It supports multiple units of measurement including kilometers, meters, miles, and nautical miles.
   ]],
   homepage = "https://github.com/cosme12/haversine",
   license = "GNU GPLv3"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
        ["haversine"] = "haversine/init.lua",
        ["haversine.constants"] = "haversine/constants.lua",
        ["haversine.math_utils"] = "haversine/math_utils.lua",
   }
}
