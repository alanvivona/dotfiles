# Class: profile::virt
#
#
class profile::virt {
  $packages = [
    'qemu-kvm',
    'libvirt-dev',
    'bridge-utils',
    'virt-manager',
    'qemu',
    'qemu-system',
    'qemu-utils',
  ]
  package { $packages: ensure => installed }
}
