config t
NO ip access-list standard NOISKUL
ip access-list standard NOISKUL
DENY   172.67.0.0 0.0.255.255
DENY   50.6.0.0 0.0.255.255
DENY   184.168.0.0 0.0.255.255
DENY   155.137.0.0 0.0.255.255
DENY   216.218.0.0 0.0.255.255
Permit Any
Int Gi 1
 ip access-group NOISKUL in
end

Int Gi 1
 no ip access-group NOISKUL in
end