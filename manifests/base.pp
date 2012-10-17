Exec {
	path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

class generic { 
	group { 'puppet':
		ensure => 'present'
	}
	exec { 'apt-get update':
		command => '/usr/bin/apt-get update'
	}
}

include generic 
include memcached
include mysql
include php
include apache
include mediawiki