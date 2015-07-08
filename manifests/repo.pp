class galera::repo {

  case ($::osfamily) {
    'Debian': {
      apt::key { 'galera':
        id     => '0xcbcb082a1bb943db',
        server => 'keyserver.ubuntu.com',
      }

      apt::source { 'galera':
        location => 'http://lon1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu/',
        repos    => 'main',
      }

      Apt::Key['galera'] -> Apt::Source['galera']
    }
  }
}
