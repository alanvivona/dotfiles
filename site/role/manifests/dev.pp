# Class: role::dev
#
#
class role::dev {
  include profile::base
  include profile::virt
  include profile::clitools
  include profile::python
  include profile::golang
}
