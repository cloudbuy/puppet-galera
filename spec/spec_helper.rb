require 'puppetlabs_spec_helper/module_spec_helper'
require 'rspec-puppet-utils'

at_exit { RSpec::Puppet::Coverage.report! }

RSpec.configure do |config|
  config.default_facts = { 
    :kernel                 => 'Linux',
    :operatingsystem        => 'Ubuntu',
    :operatingsystemrelease => '14.04',
    :osfamily               => 'Debian',
    :lsbdistid              => 'Ubuntu',
    :lsbdistcodename        => 'trusty',
    :concat_basedir         => '/tmp'
  }
end
