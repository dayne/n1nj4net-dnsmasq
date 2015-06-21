default[:dnsmasq][:dns]['server'] = [ '205.171.3.65', '64.13.48.12', '8.8.8.8' ]

default[:dnsmasq][:enable_dhcp] = true
default[:dnsmasq]['dhcp'] = {
    'domain-needed' => nil,   # do not pass short names to upstream DNS - return "not found"
    'dhcp-authoritative' => nil,
    'addn-hosts' => '/etc/dnsmasq.d/static/hosts.conf',
    'dhcp-range' => 'eth0,10.47.11.100,10.47.11.200,200h', # dynamic range
    # 'dhcp-range' => 'eth0,10.47.11.2,10.47.11.99,static,255.255.255.0,infinite' #FIXME
    'dhcp-option'=> 'option:router,10.47.11.1',
    'domain' => 'home.n1nj4.net',
    'expand-hosts' => nil,
    'local' => '/home.n1nj4.net/',
    'interface' => 'eth0',
    'log-dhcp' => nil,
    'dhcp-boot' => 'pxelinux.0',
    'enable-tftp' => nil,
    'tftp-root' => '/opt/tftpboot',
    'tftp-secure' => nil
}

=begin
# This isn't working right - not sure how to get the options working
override[:dnsmasq]['dhcp-options'] = [
    'dhcp-option=option:router,10.47.11.1',
    'dns-option=domain-search,home.n1nj4.net',
    'dhcp-range=tfp,10.47.11.50,10.47.11.60'
    #'dhcp-option=option:ntp-server,10.47.11.3', #TODO
]
=end
