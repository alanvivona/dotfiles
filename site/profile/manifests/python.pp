# Class: profile::python
#
#
class profile::python {
  class { 'python':
    version    => 'system',
    pip        => 'present',
    dev        => 'present',
    virtualenv => 'present',
    gunicorn   => 'absent',
  }

  $packages = [
    'autopep8',
    'pylint',
    'prospector',
    'pytest',
    'nose',
    'flake8',
    'ptpytho',
    'requests',
    'ipython'
  ]
  python::pip { $packages :
    ensure        => 'present',
    pkgname       => 'requests',
    pip_provider  => 'pip3',
  }
  
}

