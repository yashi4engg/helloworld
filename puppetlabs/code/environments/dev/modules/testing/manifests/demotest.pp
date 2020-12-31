# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include testing::demotest
class testing::demotest {
  file {'/root/git.conf' :
    ensure => present
  }
  package { 'git' :
    ensure => installed
  }
}
