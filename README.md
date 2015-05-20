# n1nj4net-dnsmasq

This wrapper cookbook for [hw-cookbooks/dnsmasq](https://github.com/hw-cookbooks/dnsmasq) for my home network.
* Installs dnsmasq and runs it
  * basic DHCP for home
  * configured for downstream DNS providers optmized by a 2015.05 run of namebench
* sets a *dns-server* tag for the node 
* sets a *tftp* server up that is configured for /opt/tftpboot *FIXME*
