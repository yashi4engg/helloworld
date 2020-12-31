class newmodule::yash { 
  file { '/root/yash.txt' :
    source => 'puppet:///modules/newmodule/yash.txt'
  }
}
