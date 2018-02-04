#
# Cookbook Name:: joerod
# Recipe:: default
#
# Copyright 2017, JoeRod Inc.
#
# All rights reserved - Do Not Redistribute
#

#include_recipe 'chef_client_updater'
include_recipe 'joerod::software'
include_recipe 'joerod::joerod'

#install the latest version of chef client
#chef_client_updater 'Install latest'