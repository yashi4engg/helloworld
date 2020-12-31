class javadep::package {
  notify { '$javadep::package' : } 
  $javadep::package.each |$packages| {
    package { $packages :
      ensure => installed,
    }
  }
  package { "${javadep::tomcat}" :
    ensure => installed, 
    require => Package[ 'default-jre' ]
  }
  service { "$javadep::tomcat" :
    ensure => running,
    require => Package["${javadep::tomcat}"]
  }
  file { '/var/lib/tomcat9/webapps/sample.war' :
    source => "puppet:///modules/javadep/sample.war",
    notify => Service[ "${javadep::tomcat}"]
  }
} 
