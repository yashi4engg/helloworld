class ifelse { 
  $var1 = 'value1'
  notify { "value of var1 is $ipaddress" : }
  if "$::hostname" == 'node1' {
    notify { "hostname is $hostname" : }
  }
  elsif "$::hostname" == 'node2' {
    notify { "hostname is $hostname" : }
  }
  else {
    notify { 'hostname is out of list' : }
  }
}
