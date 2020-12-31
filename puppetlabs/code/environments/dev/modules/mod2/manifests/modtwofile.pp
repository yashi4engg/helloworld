class mod2::modtwofile($filename,$filepermission) { 
    file { $filename :
    mode => "$filepermission",
    owner => 'root',
    group => 'root',
    ensure => 'file'
  }
}
