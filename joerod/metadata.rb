name             'joerod'
maintainer       'JoeRod Inc.'
maintainer_email 'joerod@gmail.com'
license          'All rights reserved'
description      'Installs/Configures joerod'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

%w[ windows chocolatey chef_client_updater].each do |cookbook|
  depends cookbook
end