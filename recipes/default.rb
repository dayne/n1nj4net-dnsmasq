#
# Cookbook Name:: n1nj4net-dnsmasq
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

tag('dns-server')

node.override[:dnsmasq]['dns']['server'] = [ '205.171.3.65', '64.13.48.12', '8.8.8.8' ] 

node.override[:dnsmasq][:enable_dhcp] = true
node.override[:dnsmasq]['dhcp'] = {
    'dhcp-authoritative' => nil,
    'dhcp-range' => 'eth0,10.47.11.100,10.47.11.200,200h',
    'dhcp-option'=> 'option:router,10.47.11.1',
    'domain' => 'n1nj4.net',
    'expand-hosts' => nil,
    'local' => '/n1nj4.net/',
    'interface' => 'eth0',
    'log-dhcp' => nil,
    'dhcp-boot' => 'pxelinux.0',
    'enable-tftp' => nil,
    'tftp-root' => '/opt/tftpboot',
    'tftp-secure' => nil
}

=begin
# This isn't working right - not sure how to get the options working
node.override[:dnsmasq]['dhcp-options'] = [
    'dhcp-option=option:router,10.47.11.1',
    'dhcp-range=tfp,10.47.11.50,10.47.11.60'
    #'dhcp-option=option:ntp-server,10.47.11.3', #TODO
]
=end

include_recipe 'dnsmasq::dns'
include_recipe 'dnsmasq::dhcp'

#include_recipe 'dnsmasq::manage_hostsfile'                     # TODO later
