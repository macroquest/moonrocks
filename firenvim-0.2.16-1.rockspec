local git_ref = '0.2.16'
local modrev = git_ref
local specrev = '1'

local repo_url = 'https://github.com/glacambre/firenvim'

rockspec_format = '3.0'
package = 'firenvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'Embed Neovim in Chrome, Firefox & others.',
  detailed = '',
  labels = { 'neovim', 'firefox', 'chrome' },
  homepage = repo_url,
  license = 'GPL-3.0'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = package .. '-' .. modrev
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'autoload', 'plugin' } ,
  install = {
    conf = {
      ['..'] = 'package.json'
    }
  }
}
