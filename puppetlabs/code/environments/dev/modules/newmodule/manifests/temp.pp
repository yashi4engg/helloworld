class newmodule::temp {
  file { '/root/template.txt' :
    content => template('newmodule/temp.erb')
  }
}

