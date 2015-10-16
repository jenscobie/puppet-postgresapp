# Public: Install Postgres.app to /Applications.
#
# Examples
#
#   include postgresapp

class postgresapp (
  $ensure   = 'present',
  $version = '9.4.5.0'
) {

  include boxen::config

  package { 'Postgres':
    ensure          => $ensure,
    provider        => 'compressed_app',
    source          => "https://github.com/PostgresApp/PostgresApp/releases/download/$version/Postgres-$version.zip",
    install_options => [
      '--appdir=/Applications',
      "--binarydir=${boxen::config::bindir}"
    ]
  }
}
