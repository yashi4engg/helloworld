class mod3::create 
($dirname = $mod3::params::directoryname,$filename = $mod3::params::filename) 
inherits mod3::params
{
  file { "$dirname" : 
    ensure => directroy
  }
  file { "$filename" :
    ensure => present
  }
}

