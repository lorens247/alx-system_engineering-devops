# Install flask from pip3

exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => ['/usr/bin'],
  creates     => '/usr/local/lib/python3.8/dist-packages/flask',
  require     => Package['python3-pip'],
  notify      => Exec['check_flask_version'],
}

exec { 'check_flask_version':
  command     => 'flask --version',
  path        => ['/usr/bin'],
  logoutput   => true,
  refreshonly => true,
}
