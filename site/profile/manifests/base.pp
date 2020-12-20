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
  ]
  package { $packages: ensure => 'installed' }
}
