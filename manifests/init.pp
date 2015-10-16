# Public: Install Postgres.app to /Applications.
#
# Examples
#
#   include postgresapp

class postgresapp {
  package { 'Postgresapp':
    source   => 'https://github.com/PostgresApp/PostgresApp/releases/download/9.4.5.0/Postgres-9.4.5.0.zip',
    provider => 'compressed_app',
  }
}
