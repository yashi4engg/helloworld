node default {
        include demoprod 
	file { 'default':
		path => '/root/default.txt',
		ensure => present
	}
}
