#install laters apps via chocolatey
%w{PowerShell 
rsat
python
python2
7zip 
spotify
vlc
GoogleChrome
firefox
terraform
visualstudiocode
notepadplusplus.install
sublimetext2
git.install
chef-client
chefdk
docker
qbittorrent
plexmediaserver
slack
putty
winscp
itunes
dropbox
imgburn}.each do |pack|
  chocolatey_package pack
end