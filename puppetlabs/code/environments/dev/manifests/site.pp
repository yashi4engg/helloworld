define myresource ($msg=$title,$user,$file) {
  notify { "my custome resorce" : }
  file { '/root/${file}.txt' :
    ensure => file,
    owner => $user,
    require => User[$user]
  }
  user { "$user" :
    ensure => present,
    uid => 2001
  }
}
node default {
#  include firstmod
#  include newmodule
#  include ifelse
#  class {mod1::modoneuser :
#    username => "modoneuser",
#   uid => "1100",
#  }
#  include mod3
#  include testing
#  class  {mod2::modtwofile :
#    filename => "/root/modtwofile",
#    filepermission => "0660",
#  }
  include hmod
  include javadep
  myresource { 'testing resource as parameter' :
    file => 'myresource',
    user => 'myuser'
  }
}
