# Configuring your server with Puppet!

# Install Nginx package
package { 'nginx':
  ensure => installed,
}
 
# Configure Nginx server
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    server_name _;
    root /var/www/html;

    location / {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }

    location / {
        index index.html;
    }
}
",
}

# Enable the default site by creating a symbolic link using shell provider
exec { 'enable_nginx_default_site':
  command     => 'ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default',
  path        => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  refreshonly => true,
  require     => File['/etc/nginx/sites-available/default'],
}

# Remove default Nginx welcome page
file { '/var/www/html/index.html':
  ensure => absent,
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  hasstatus => true,
  provider => 'shell',
  status   => '/bin/systemctl status nginx | grep -q "active (running)"',
  require  => Package['nginx'],
}
