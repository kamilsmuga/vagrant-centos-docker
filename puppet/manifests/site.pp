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

package { 'screen':
        ensure => "installed",
}

package { 'vim':
        ensure => "installed",
}
