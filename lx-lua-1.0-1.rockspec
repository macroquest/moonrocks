package = "lx-lua"
version = "1.0-1"
source = {
   url = "git+https://github.com/razmi0/luax.git",
   branch = "main"
}
description = {
   summary = "Luax transpiler",
   detailed = "dev",
   homepage = "https://github.com/razmi0/luax",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luv",
   "inspect",
   "lpeg"
}
build = {
   type = "builtin",
   modules = {
      ["bundler.bundle"] = "lib/bundler/bundle.lua",
      ["luax.dev"] = "lib/luax/dev.lua",
      ["luax.doc.types"] = "lib/luax/doc/types.lua",
      ["luax.transpiler.build"] = "lib/luax/transpiler/build.lua",
      ["luax.transpiler.define_config"] = "lib/luax/transpiler/define_config.lua",
      ["luax.transpiler.emit"] = "lib/luax/transpiler/emit.lua",
      ["luax.transpiler.emitter"] = "lib/luax/transpiler/emitter.lua",
      ["luax.transpiler.luax_helpers"] = "lib/luax/transpiler/luax_helpers.lua",
      ["luax.transpiler.main"] = "lib/luax/transpiler/main.lua",
      ["luax.transpiler.parser"] = "lib/luax/transpiler/parser.lua",
      ["luax.transpiler.render"] = "lib/luax/transpiler/render.lua",
      ["luax.transpiler.transpile"] = "lib/luax/transpiler/transpile.lua",
      ["luax.utils.deep_merge"] = "lib/luax/utils/deep_merge.lua",
      ["luax.utils.format_header"] = "lib/luax/utils/format_header.lua",
      ["luax.utils.fs"] = "lib/luax/utils/fs.lua",
      ["luax.utils.logger"] = "lib/luax/utils/logger.lua",
      ["luax.utils.normalize_path"] = "lib/luax/utils/normalize_path.lua",
      ["luax.utils.sort_aliases"] = "lib/luax/utils/sort_aliases.lua",
      ["luax.utils.to_ssg"] = "lib/luax/utils/to_ssg.lua",
      ["watcher.watch"] = "lib/watcher/watch.lua"
   }
}
