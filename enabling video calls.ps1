@@@Enabling Video Calls
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