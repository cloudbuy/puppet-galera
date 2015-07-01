# Class to mimick the Puppetlabs mysql::server class
class galera::server (
  $config_file             = $mysql::params::config_file,
  $includedir              = $mysql::params::includedir,
  $install_options         = undef,
  $manage_config_file      = $mysql::params::manage_config_file,
  $override_options        = {},
  $package_ensure          = $mysql::params::server_package_ensure,
  $package_manage          = $mysql::params::server_package_manage,
  $package_name            = $mysql::params::server_package_name,
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
) {

}
