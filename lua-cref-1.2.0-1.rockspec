package = "lua-cref"
version = "1.2.0-1"
source = {
    url = "git+https://gitlab.com/mambrus/lua-cref.git"
}
description = {
    summary = "Shared base-class for Trace and Log",
    detailed = [[
        Base-class Cref handles source-references in utrace-format as
        selections.

        Selections are sub-sets of probes that by the child-classes
        permits handling groups of probes in unison. Sub-selections are
        usually filtered from the full set using either regexp matching,
        Lua native table selection, indexes or Cref own index-range
        selection.

        Sub-selections can also be grown enabling composing resulting
        selections of much greater complexity than the primitives mentioned
        alone can.

        The child-classes Log and Trace are part of the following projects:

        * https://gitlab.com/mambrus/utrace.git
        * https://gitlab.com/mambrus/tplog.git

        However usage is not limited to these, as long as format and
        pre-requisites are the same.
    ]],
    homepage = "https://gitlab.com/mambrus/lua-cref",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "cmake",
    variables = {
        LUA = "$(LUA)",
        BUILD_LUAROCK = "ON",
        LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
        LUA_LIBRARY_DIR = "$(LUA_DIR)/lib",
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    }
}
