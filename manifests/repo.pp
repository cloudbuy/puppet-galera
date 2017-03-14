class galera::repo {

  case ($::osfamily) {
    'Debian': {
      apt::key { 'galera':
        id     => '177F4010FE56CA3336300305F1656F24C74CD1D8',
        server => 'keyserver.ubuntu.com',
      }

      apt::source { 'galera':
        location => 'http://lon1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu/',
        repos    => 'main',
      }

      Apt::Key['galera'] -> Apt::Source['galera']
    }
  }
}
