require 'spec_helper'

describe 'Postgresapp' do
  let(:facts) { default_test_facts }

  context 'ensure => present' do
    let(:params) { { :ensure => 'present' } }

    it do
      should contain_package('Postgresapp-9.4.5.0').with({
        :ensure   => 'present',
        :source   => 'https://github.com/PostgresApp/PostgresApp/releases/download/9.4.5.0/Postgres-9.4.5.0.zip',
        :provider => 'compressed_app',
        :install_options => ['--appdir=/Applications', '--binarydir=/test/boxen/bin'],
      })
    end
  end

  context 'ensure => absent' do
    let(:params) { { :ensure => 'absent' } }

    it { should contain_package('Postgresapp-9.4.5.0').with_ensure('absent') }
  end
end
