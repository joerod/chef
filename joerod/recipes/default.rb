#
# Cookbook Name:: joerod
# Recipe:: default
#
# Copyright 2017, JoeRod Inc.
#
# All rights reserved - Do Not Redistribute
#

#include_recipe 'chef_client_updater'
['joerod::chef-client','joerod::joerod','joerod::software'].each do |recipe|
    include_recipe recipe
end

#install the latest version of chef client
#chef_client_updater 'Install latest'