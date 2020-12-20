# Class: profile::web
#
#
class profile::base {
  $base_packages = [ 
    'wget',
    'curl',
    'locate',
    'unzip',
    'vim',
    'build-essential',
  ]
  package { $base_packages: ensure => 'installed' }
}
