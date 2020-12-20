node "default" {
  $base_packages = [ 'golang', 'wget', 'curl', 'locate', 'unzip', 'vim', 'build-essential' ]
  package { $base_packages: ensure => 'installed' }
}
