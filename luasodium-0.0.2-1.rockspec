package = "luasodium"
version = "0.0.2-1"

source = {
  url = "https://github.com/jprjr/luasodium/releases/download/v0.0.2/luasodium-0.0.2.tar.gz"
}

description = {
  summary = "Lua bindings to libsodium, includes regular and FFI bindings",
  homepage = "https://github.com/jprjr/luasodium",
  license = "MIT"
}

build = {
  type = "builtin",
  modules = {
    ["luasodium"] = {
      sources = { "luasodium.c" },
      libdirs = "$(SODIUM_LIBDIR)",
      incdirs = "$(SODIUM_INCDIR)",
      libraries = "sodium",
    },
    ["luasodium.randombytes"] = {
      sources = { "luasodium/randombytes.c" },
      libdirs = "$(SODIUM_LIBDIR)",
      incdirs = "$(SODIUM_INCDIR)",
      libraries = "sodium",
    },
    ["luasodium.crypto_secretbox"] = {
      sources = { "luasodium/crypto_secretbox.c" },
      libdirs = "$(SODIUM_LIBDIR)",
      incdirs = "$(SODIUM_INCDIR)",
      libraries = "sodium",
    },
  },
}

dependencies = {
  "lua >= 5.1"
}

external_dependencies = {
  SODIUM = {
    header = 'sodium.h',
    library = 'sodium',
  }
}
