#
# Cookbook Name:: n1nj4net-dnsmasq
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

#include_attribute 'n1nj4net-dnsmasq'

include_recipe 'dnsmasq::default'
#include_recipe 'dnsmasq::manage_hostsfile'                     # TODO later

tag('dns-server')

directory "/etc/dnsmasq.d/static" do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

cookbook_file "hosts.conf" do
  owner 'root'
  group 'root'
  mode '0644'
  path "/etc/dnsmasq.d/static/hosts.conf"  # FIX ME - USE VARABLE
  action :create
end

