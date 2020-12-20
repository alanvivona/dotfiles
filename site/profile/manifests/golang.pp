# Class: profile::golang
#
#
class profile::golang {
   $packages = [ 
    'go',
  ]
  package { $packages: ensure => 'installed' }
}

