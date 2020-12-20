node "default" {
  $base_packages = [ 'wget', 'curl', 'locate', 'unzip', 'vim', 'build-essential' ]
  package { $enhancers: ensure => 'installed' }
}
