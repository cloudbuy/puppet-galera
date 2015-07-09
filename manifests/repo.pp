class galera::repo {

  case ($::osfamily) {
    'Debian': {
      apt::key { 'galera':
        id     => '199369E5404BD5FC7D2FE43BCBCB082A1BB943DB',
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
