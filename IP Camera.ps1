config t
ip routing
ip dhcp pool CAMERA6
host 10.81.50.6 255.255.255.0
client-identifier 001a.0709.bce9
ip dhcp pool CAMERA8
host 10.81.50.8 255.255.255.0
client-identifier 001a.0709.bd03 
end
show ip dhcp binding