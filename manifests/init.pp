# == Class: galera
#
# Full description of class galera here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the function of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'galera':
#  }
#
# === Authors
#
# Damien Churchill <damien.churchill@cloudbuy.com>
#
# === Copyright
#
# Copyright 2015 cloudBuy PLC
#
class galera(
  $manage_repo = true,
  $package_manage = true,
){

  if ($manage_repo) {
    include ::galera::repo
  }

  if ($package_manage) {
    package { 'galera-3':
      ensure => present,
    }

    package { 'galera-arbitrator-3':
      ensure => present,
    }

    package { 'mysql-wsrep-server-5.6':
      ensure => present,
      alias  => 'mysql-server'
    }

    Package['mysql-server'] -> Service['mysqld']
  }

}
