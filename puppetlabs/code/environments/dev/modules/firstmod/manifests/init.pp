class firstmod {
  notify { "i am from class firstmod" : }
#  exec { '$username' :
#   path => ['/bin','/usr/bin/','/sbin','/usr/sbin'],
#   command => "cat /etc/passwd|awk '{print $1}'",
#  }
  $username = inline_template("<%= `cat /etc/passwd|cut -d: -f1` %>")
  notify { "print $username" : }
}
