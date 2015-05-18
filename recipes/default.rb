#
# Cookbook Name:: n1nj4net-dns
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#

#node['resolver']['search'] = 
#node['resolver']['domain'] = 

dns_server_options = search(:node, 'tag:dns-server', filter_result: {'ip' => ['ipaddress']})
dns_servers = dns_server_options.collect(&:values) 
dns_servers.push '8.8.8.8' # always give me a google DNS

node.override['resolver']['nameservers'] = dns_servers

include_recipe 'resolver'
