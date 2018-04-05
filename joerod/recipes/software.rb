#install laters apps via chocolatey
%w{PowerShell
powershell-core
visualstudiocode 
spotify
vlc
GoogleChrome
dropbox
plexmediaserver
itunes
python
python2
7zip 
firefox
terraform
notepadplusplus.install
sublimetext2
git.install
chef-client
chefdk
docker
qbittorrent
slack
putty
winscp
imgburn
rsat}.each do |pack|
  chocolatey_package pack do
    timeout node['joerod']['windows']['choco_timeout'].to_i
    action :upgrade
  end
end