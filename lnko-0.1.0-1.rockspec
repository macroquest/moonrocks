local git_ref = 'v0.1.0'
local modrev = '0.1.0'
local specrev = '1'

local repo_url = 'https://github.com/pgagnidze/lnko'

rockspec_format = '3.0'
package = 'lnko'
version = modrev ..'-'.. specrev

description = {
  summary = 'A symlink farm manager, simpler alternative to GNU Stow',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/pgagnidze/lnko',
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1', 'luafilesystem >= 1.8.0' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'lnko-' .. '0.1.0',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { },
}
