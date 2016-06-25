class dofacts {
  if ! defined(Package['json_pure']) {
    package { 'jason_pure':
      ensure   => present,
      provider => 'gem',
    }
  }
}
