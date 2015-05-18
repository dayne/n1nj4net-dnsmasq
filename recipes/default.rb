#
# Cookbook Name:: n1nj4net-dns
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

tag('dns-server')

#node.force_default[:dnsmasq][:enable_dhcp] = false              # TODO later
node.override[:dnsmasq]['dns']['server'] = [ '205.171.3.65', '64.13.48.12', '8.8.8.8' ] 
include_recipe 'dnsmasq::dns'

#include_recipe 'dnsmasq::manage_hostsfile'                     # TODO later
#include_recipe 'dnsmasq::dhcp'                                 # TODO later
