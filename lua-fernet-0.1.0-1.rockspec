rockspec_format = "3.0"
package = "lua-fernet"
version = "0.1.0-1"

source = {
   url = "git+https://github.com/zimmer-yan/lua-fernet.git",
   tag = "v0.1.0"
}

description = {
   summary = "Fernet symmetric encryption for Lua",
   detailed = [[
      A Lua implementation of the Fernet token specification.
      Fernet guarantees that a message encrypted using it cannot be
      manipulated or read without the key. It uses AES-128-CBC
      encryption and HMAC-SHA256 for authentication.
   ]],
   homepage = "https://github.com/zimmer-yan/lua-fernet",
   license = "MIT",
   labels = { "crypto", "encryption", "fernet", "security" }
}

dependencies = {
   "lua >= 5.1",
   "luaossl >= 20200709"
}

build = {
   type = "builtin",
   modules = {
      fernet = "src/fernet.lua"
   }
}

test = {
   type = "busted"
}
