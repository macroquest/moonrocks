local _MODREV, _SPECREV = '0.1.5', '-1'

rockspec_format = "3.0"
package = 'nvim-lspconfig'
version = _MODREV .. _SPECREV

description = {
  summary = "A collection of common configurations for Neovim's built-in language server client.",
  detailed = [[
    This plugin allows for declaratively configuring, launching, and initializing language servers you have installed on your system.
    Language server configurations are community-maintained.
  ]],
  homepage = 'https://github.com/neovim/nvim-lspconfig',
  license = 'Apache/2.0',
  labels = { 'neovim', 'lsp' }
}

dependencies = {
  'lua == 5.1',
}

source = {
  url = 'https://github.com/neovim/nvim-lspconfig/archive/v' .. _MODREV .. '.zip',
  dir = 'nvim-lspconfig-' .. _MODREV,
}

if _MODREV == '0.1.5' then
  source = {
    url = 'git://github.com/neovim/nvim-lspconfig',
  }
end

build = {
  type = 'builtin',
  copy_directories = {
    'doc'
  }
}
