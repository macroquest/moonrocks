local _MODREV, _SPECREV = '6.2.7', '-1'
local USE_STATIC_LIBYAML = true

package = 'lyaml'
version = _MODREV .. _SPECREV

description = {
   summary  = 'libYAML binding for Lua',
   detailed = 'Read and write YAML format files with Lua.',
   homepage = 'http://github.com/gvvaughan/lyaml',
   license  = 'MIT/X11',
}

source = {
   url = 'http://github.com/gvvaughan/lyaml/archive/v' .. _MODREV .. '.zip',
   dir = 'lyaml-' .. _MODREV,
}

dependencies = {
   'lua >= 5.1, < 5.5',
}

external_dependencies = {
   YAML = {
     library = 'yaml',
   },
   platforms = {
     windows = {
       YAML = {
         library = 'libyaml',
       }
     }
   },
}

build = {
   type = 'builtin',
   modules  = {
     ['yaml'] = {
       sources = {
         'ext/yaml/yaml.c',
         'ext/yaml/emitter.c',
         'ext/yaml/parser.c',
         'ext/yaml/scanner.c',
       },
       incdirs   = { "$(YAML_INCDIR)" },
       libdirs   = { "$(YAML_LIBDIR)" },
       defines   = {
         "VERSION=\"" .. _MODREV .. "\"",
       }
     },
     ['lyaml']            = 'lib/lyaml/init.lua',
     ['lyaml.explicit']   = 'lib/lyaml/explicit.lua',
     ['lyaml.functional'] = 'lib/lyaml/functional.lua',
     ['lyaml.implicit']   = 'lib/lyaml/implicit.lua',
   },
   platforms = {
     windows = { modules = { yaml = {libraries = { "libyaml" } } } },
     unix    = { modules = { yaml = {libraries = { "yaml"    } } } },
   }
}

if _MODREV == 'git' then
   build.copy_directories = nil

   source = {
      url = 'git://github.com/gvvaughan/lyaml.git',
   }
end

local function append(t, v) t[#t + 1] = v end

if USE_STATIC_LIBYAML then
  -- required if linking against static libyaml (only on Windows/MSVC)
  append(build.modules.yaml.defines, "YAML_DECLARE_STATIC")
end