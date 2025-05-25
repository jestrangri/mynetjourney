!!CREATING AND PLACING PORTS INSIDEAVLAN:
( LINE 103 to 141 PASTE TO COREBABA SWITCH )
config t
vlan 10
   name WIFIVLAN
vlan 30
   name JESTRAN
vlan 50
   name IPCCTVLAN
vlan 69
   name UPPERMGMT
vlan 70
    name ACCOUNTING
vlan 71
    name HR
vlan 100
   name VOICEVLANconfig t
ip routing
ip dhcp pool CAMERA6
host 10.81.50.6 255.255.255.0
client-identifier 001a.0709.bce9
ip dhcp pool CAMERA8
host 10.81.50.8 255.255.255.0
client-identifier 001a.0709.bd03
end
show ip dhcp binding
Int Fa 0/2
  switchport mode access
  switchport access vlan 10  
Int Fa 0/4
  switchport mode access
  switchport access vlan 10
Int Fa 0/6
  switchport mode access
  switchport access vlan 50  
Int Fa 0/8
  switchport mode access
  switchport access vlan 50    
Int Fa 0/3
  switchport mode access
  switchport access vlan 100     
Int Fa 0/5
  switchport mode access  
  switchport voice vlan 100
  mls qos trust device cisco-phone 
  switchport access vlan 1
Int Fa 0/7
  switchport mode access
  switchport voice vlan 100 
  mls qos trust device cisco-phone 
 switchport access vlan 1
 end