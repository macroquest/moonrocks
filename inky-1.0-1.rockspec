rockspec_format = "3.0"
package = "Inky"
version = "1.0-1"
source = {
   url = "git://github.com/Keyslam/Inky",
   tag = "main"
}
description = {
   summary = "A GUI Framework for LÖVE",
   detailed = "A GUI Framework for LÖVE",
   homepage = "https://github.com/Keyslam/Inky",
   issues_url = "https://github.com/Keyslam/Inky/issues",
   maintainer = "Sky Leite <sky@leite.dev>",
   license = "MIT",
   labels = { "love" }
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["inky"] = "inky/init.lua",
        ["inky.lib.class"] = "inky/lib/class.lua",
        ["inky.lib.hashSet"] = "inky/lib/hashSet.lua",
        ["inky.core.defineElement"] = "inky/core/defineElement.lua",
        ["inky.core.spatialHash"] = "inky/core/spatialHash.lua",
        ["inky.core.element"] = "inky/core/element/init.lua",
        ["inky.core.element.internal"] = "inky/core/element/internal.lua",
        ["inky.core.pointer"] = "inky/core/pointer/init.lua",
        ["inky.core.pointer.internal"] = "inky/core/pointer/internal.lua",
        ["inky.core.pointer.mode"] = "inky/core/pointer/mode.lua",
        ["inky.core.props"] = "inky/core/props/init.lua",
        ["inky.core.props.internal"] = "inky/core/props/internal.lua",
        ["inky.core.scene"] = "inky/core/scene/init.lua",
        ["inky.core.scene.internal"] = "inky/core/scene/internal.lua",
    },
}
