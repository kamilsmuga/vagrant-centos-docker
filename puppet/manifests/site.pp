class { 'yum':
}

package { 'docker-io': 
        require => Yumrepo[ "epel" ],
        ensure => "installed",
}

service { 'docker':
        ensure => "running",
        enable => true,
        require => Package['docker-io'],
}

service { 'puppet':
        enable => true,
        }
