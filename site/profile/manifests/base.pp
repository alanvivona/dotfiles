class profile::base {
  class { '::ntp': }
  class { '::resolv': }
}
