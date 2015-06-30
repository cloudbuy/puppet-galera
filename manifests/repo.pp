class galera::repo {

  apt::key { 'galera':
    id     => '44B7345738EBDE52594DAD80D669017EBC19DDBA',
    server => 'keyserver.ubuntu.com',
  }

  apt::source { 'galera':
    location => 'http://releases.galeracluster.com/ubuntu',
    repos    => 'main',
  }

  Apt::Key['galera'] -> Apt::Source['galera']
}
