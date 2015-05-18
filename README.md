# n1nj4net-dnsmasq

This wrapper cookbook creates a dnsmasq server setup to provide:
* Installs dnsmasq and runs it
  * no DHCP (yet)
  * configured for downstream DNS providers optmized by a 2015.05 run of namebench
* sets a *dns-server* tag for the node 

