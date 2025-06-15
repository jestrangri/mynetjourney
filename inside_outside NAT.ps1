STEP1: define INSIDE AND OUTSIDE:
STEP2: create Access-list to permit IP of Inside:
STEP3: create a NAT pool with overload
@vpnPH:
config t
int gi 1
ip nat OUTSIDE
int gi 2
ip nat INSIDE
int gi 3
ip nat INSIDE
no access-list 8
access-list 8 permit 192.168.102.0 0.0.0.255
access-list 8 permit 192.168.103.0 0.0.0.255
ip nat inside source list 8 interface Gi 1 overload
ip nat inside source static 192.168.103.21 208.8.8.51
ip nat inside source static 192.168.103.22 208.8.8.52
end
FW-VPN-PH#show ip nat translations 