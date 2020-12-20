# Class: profile::web
#
#
class profile::base {
  $packages = [ 
    'wget',
    'curl',
    'locate',
    'unzip',
    'unrar',
    'vim',
    'build-essential',
    'fonts-hack-ttf',
  ]
  package { $packages: ensure => 'installed' }
}
