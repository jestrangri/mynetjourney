Config t
service timestamps log datetime
service timestamps debug datetime
logging 10.52.1.10
logging trap 5

conf t
NO IP access-list Extended FWP1
IP access-list Extended FWP1
 Permit tcp Any host www.web310.com eq 80 
 Permit tcp Any host www.web310.com eq 443 
 Permit icmp Any host www.web310.com
 Permit tcp Any host www.web311.com eq 53 
 Permit tcp Any host www.web311.com eq 443 
 Permit tcp Any host www.web311.com eq 22
 Int Gi 3
  ip access-group FWP1 in
  end

 Int Gi 3
 no ip access-group FWP1 in
 end