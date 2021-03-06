# Class to mimick the Puppetlabs mysql::server class
class galera::server (
  $cluster_name            = 'galera-cluster',
  $config_file             = $mysql::params::config_file,
  $includedir              = $mysql::params::includedir,
  $install_options         = undef,
  $manage_config_file      = $mysql::params::manage_config_file,
  $override_options        = {},
  $package_ensure          = $mysql::params::server_package_ensure,
  $package_manage          = $mysql::params::server_package_manage,
  $purge_conf_dir          = $mysql::params::purge_conf_dir,
  $remove_default_accounts = false,
  $restart                 = $mysql::params::restart,
  $root_group              = $mysql::params::root_group,
  $mysql_group             = $mysql::params::mysql_group,
  $root_password           = $mysql::params::root_password,
  $service_enabled         = $mysql::params::server_service_enabled,
  $service_manage          = $mysql::params::server_service_manage,
  $service_name            = $mysql::params::server_service_name,
  $service_provider        = $mysql::params::server_service_provider,
  $create_root_user        = $mysql::params::create_root_user,
  $create_root_my_cnf      = $mysql::params::create_root_my_cnf,
  $users                   = {},
  $grants                  = {},
  $databases               = {},
) inherits mysql::params {

  include galera::repo

  class { 'mysql::server':
    config_file             => $config_file,
    includedir              => $includedir,
    install_options         => $install_options,
    manage_config_file      => $manage_config_file,
    override_options        => $override_options,
    package_name            => 'mariadb-server',
    package_ensure          => $package_ensure,
    package_manage          => $package_manage,
    purge_conf_dir          => $purge_conf_dir,
    remove_default_accounts => $remove_default_accounts,
    restart                 => $restart,
    root_group              => $root_group,
    mysql_group             => $mysql_group,
    root_password           => $root_password,
    service_enabled         => $service_enabled,
    service_manage          => $service_manage,
    service_name            => 'mariadb',
    service_provider        => $service_provider,
    create_root_user        => $create_root_user,
    create_root_my_cnf      => $create_root_my_cnf,
    users                   => $users,
    grants                  => $grants,
    databases               => $databases,
  }

}
