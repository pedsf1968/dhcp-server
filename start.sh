echo ifconfig eth0 192.168.0.1
ifconfig eth0 192.168.0.1
ifconfig | grep  192.168.0.1

echo cp /tmp/isc-dhcp-server /etc/default
cp /tmp/isc-dhcp-server /etc/default
cat /etc/default/isc-dhcp-server

echo cp /tmp/dhcpd.conf /etc/dhcp
cp /tmp/dhcpd.conf /etc/dhcp
cat /etc/dhcp/dhcpd.conf

echo service rsyslog start
service rsyslog start
service rsyslog status

echo service isc-dhcp-server start
service isc-dhcp-server start
service isc-dhcp-server status
