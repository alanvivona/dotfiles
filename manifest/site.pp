node "default" {
  file { '/root/README.md':
    ensure => file,
    source => 'puppet://README.md';
  }
}
