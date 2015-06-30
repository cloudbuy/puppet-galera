require 'spec_helper'
describe 'galera::repo' do

  context 'with defaults for all parameters' do
    it { should contain_class('galera::repo') }
    it { should contain_apt__key('galera') }
    it { should contain_apt__source('galera') }
  end
end

