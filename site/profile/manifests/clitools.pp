# Class: profile::clitools
#
#
class profile::clitools {
  $packages = [
    'nload',
    'htop',
    'glances',
    'slurm',
    'jq',
  ]
  package { $packages: ensure => installed }
}

