config t   
no telephony-service
telephony-service
   no auto assign
   no auto-reg-ephone
   max-ephones 5
   max-dn 20
   ip source-address 10.81.100.8 port 2000
   create cnf-files
ephone-dn 1
  number 8111
ephone-dn 2
  number 8122
ephone-dn 3
  number 8133
ephone-dn 4
  number 8144
ephone-dn 5
  number 8155
ephone-dn 6
  number 8166
ephone-dn 7
  number 8177
ephone-dn 8
  number 8188
 ephone-dn 9
   number 8199
ephone-dn 10
 number 8198
Ephone 1
  Mac-address 204c.9e6c.8743
  type 8945
  button 1:8 2:7 3:6 4:5
  restart
Ephone 2
  Mac-address 204c.9e6c.e263
  type 8945
  button 1:4 2:3 3:2 4:1
  restart  
end
configure terminal
ephone 1
   video
   voice service voip
   h323
   call start slow
ephone 2
   video
   voice service voip
   h323
   call start slow
end