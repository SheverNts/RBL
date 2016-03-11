#!/bin/bash
#/////////////////////////////////////////////////////////////////////////
rm -rf /tmp/rbl.tmp 2> /dev/null
Help() {
echo "This binary is use to check the ip listed in RBL:"
echo "help"
echo "[i ----> ip]"
echo "[f ----> file]"
echo "[v ----> Version"
}

if [ -z $1 ];
then
Help
elif [ -n $1 ]
then
while getopts :i:f:v FLAG; do
  case $FLAG in
    i)
      OPTERR=0
      if [[ $OPTARG =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
      then
      echo "$OPTARG" > /tmp/rbl.tmp
      chmod 1444 /tmp/rbl.tmp
      else
      echo "Enter the valid ip address"
      fi
      ;;
    f)
      if [ -f $OPTARG ];
      then
         cat $OPTARG | while read ips;
         do
           if [[ $ips =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]
           then
           echo $ips >> /tmp/rbl.tmp
           chmod 1444 /tmp/rbl.tmp
           else
           echo "$ips is not an valid ip adddress."
           exit 1
           fi
         done
      else
      echo "Their is no such file or Directory"
      exit 1
      fi
     ;;
     v)
       echo " Version 1.00"
      ;;
    \?)
      Help
      exit 1
      ;;
  esac
done
fi

domain[0]="0spam.fusionzero.com"
domain[1]="0spam-killlist.fusionzero.com"
domain[2]="0spamtrust.fusionzero.com"
domain[3]="access.redhawk.org"
domain[4]="accredit.habeas.com"
domain[5]="all.dnsbl.bit.nl"
domain[6]="all.rbl.jp"
domain[7]="all.s5h.net"
domain[8]="all.spamrats.com"
domain[9]="asn.routeviews.org"
domain[10]="aspath.routeviews.org"
domain[11]="aspews.ext.sorbs.net"
domain[12]="backscatter.spameatingmonkey.net"
domain[13]="badnets.spameatingmonkey.net"
domain[14]="bad.psky.me"
domain[15]="b.barracudacentral.org"
domain[16]="bb.barracudacentral.org"
domain[17]="bitonly.dnsbl.bit.nl"
domain[18]="blackholes.mail-abuse.org"
domain[19]="blacklist.sci.kun.nl"
domain[20]="blacklist.woody.ch"
domain[21]="bl.blocklist.de"
domain[22]="bl.drmx.org"
domain[23]="bl.emailbasura.org"
domain[24]="bl.konstant.no"
domain[25]="bl.mailspike.net"
domain[26]="bl.mav.com.br"
domain[27]="block.dnsbl.sorbs.net"
domain[28]="bl.rbl-dns.com"
domain[29]="bl.scientificspam.net"
domain[30]="bl.score.senderscore.com"
domain[31]="bl.spamcop.net"
domain[32]="bl.spameatingmonkey.net"
domain[33]="bl.spamstinks.com"
domain[34]="bl.suomispam.net"
domain[35]="bsb.empty.us"
domain[36]="bsb.spamlookup.net"
domain[37]="cbl.abuseat.org"
domain[38]="cblless.anti-spam.org.cn"
domain[39]="cblplus.anti-spam.org.cn"
domain[40]="ccess.redhawk.org"
domain[41]="cml.anti-spam.org.cn"
domain[42]="combined.njabl.org"
domain[43]="combined.rbl.msrbl.net"
domain[44]="csi.cloudmark.com"
domain[45]="dnsbl-0.uceprotect.net"
domain[46]="dnsbl-1.uceprotect.net"
domain[47]="dnsbl.anticaptcha.net"
domain[48]="dnsbl.aspnet.hu"
domain[49]="dnsblchile.org"
domain[50]="dnsbl.cobion.com"
domain[51]="dnsbl.justspam.org"
domain[52]="dnsbl.kempt.net"
domain[53]="dnsbl.madavi.de"
domain[54]="dnsbl.net.ua"
domain[55]="dnsbl.openresolvers.org"
domain[56]="dnsbl.proxybl.org"
domain[57]="dnsbl.rizon.net"
domain[58]="dnsbl.rv-soft.info"
domain[59]="dnsbl.rymsho.ru"
domain[60]="dnsbl.sorbs.net"
domain[61]="dnsbl.spam-champuru.livedoor.com"
domain[62]="dnsbl.tornevall.org"
domain[63]="dnsbl.webequipped.com"
domain[64]="dnsbl.zapbl.net"
domain[65]="dnsrbl.org"
domain[66]="dnsrbl.swinog.ch"
domain[67]="dnswl.inps.de"
domain[68]="drone.abuse.ch"
domain[69]="dsn.bl.rfc-ignorant.de"
domain[70]="dsn.rfc-ignorant.org"
domain[71]="dul.pacifier.net"
domain[72]="dyna.spamrats.com"
domain[73]="dynip.rothen.com"
domain[74]="dyn.nszones.com"
domain[75]="escalations.dnsbl.sorbs.net"
domain[76]="eswlrev.dnsbl.rediris.es"
domain[77]="exitnodes.tor.dnsbl.sectoor.de"
domain[78]="feb.spamlab.com"
domain[79]="fnrbl.fast.net"
domain[80]="forbidden.icm.edu.pl"
domain[81]="free.v4bl.org"
domain[82]="geobl.spameatingmonkey.net"
domain[83]="gl.suomispam.net"
domain[84]="hil.habeas.com"
domain[85]="hostkarma.junkemailfilter.com"
domain[86]="httpbl.abuse.ch"
domain[87]="hul.habeas.com"
domain[88]="iadb2.isipp.com"
domain[89]="iadb.isipp.com"
domain[90]="images.rbl.msrbl.net"
domain[91]="ipbl.zeustracker.abuse.ch"
domain[92]="ips.backscatterer.org"
domain[93]="ips.whitelisted.org"
domain[94]="ip.v4bl.org"
domain[95]="ispmx.pofon.foobar.hu"
domain[96]="ix.dnsbl.manitu.net"
domain[97]="l1.bbfh.ext.sorbs.net"
domain[98]="l2.bbfh.ext.sorbs.net"
domain[99]="l3.bbfh.ext.sorbs.net"
domain[100]="l4.bbfh.ext.sorbs.net"
domain[101]="list.bbfh.org"
domain[102]="list.blogspambl.com"
domain[103]="list.dnswl.org"
domain[104]="mail-abuse.blacklist.jippg.org"
domain[105]="mtawlrev.dnsbl.rediris.es"
domain[106]="netblockbl.spamgrouper.to"
domain[107]="netblock.pedantic.org"
domain[108]="netbl.spameatingmonkey.net"
domain[109]="netscan.rbl.blockedservers.com"
domain[110]="new.spam.dnsbl.sorbs.net"
domain[111]="nobl.junkemailfilter.com"
domain[112]="no-more-funn.moensted.dk"
domain[113]="noptr.spamrats.com"
domain[114]="old.spam.dnsbl.sorbs.net"
domain[115]="opm.tornevall.org"
domain[116]="origin.asn.cymru.com"
domain[117]="origin.asn.spameatingmonkey.net"
domain[118]="orvedb.aupads.org"
domain[119]="peer.asn.cymru.com"
domain[120]="phishing.rbl.msrbl.net"
domain[121]="plus.bondedsender.org"
domain[122]="pofon.foobar.hu"
domain[123]="problems.dnsbl.sorbs.net"
domain[124]="proxies.dnsbl.sorbs.net"
domain[125]="psbl.surriel.com"
domain[126]="query.bondedsender.org"
domain[127]="rbl2.triumf.ca"
domain[128]="rbl.abuse.ro"
domain[129]="rbl.blockedservers.com"
domain[130]="rbl.dns-servicios.com"
domain[131]="rbl.efnet.org"
domain[132]="rbl.fasthosts.co.uk"
domain[133]="rbl.iprange.net"
domain[134]="rbl.lugh.ch"
domain[135]="rbl.megarbl.net"
domain[136]="rbl-plus.mail-abuse.org"
domain[137]="rbl.schulte.org"
domain[138]="rbl.suresupport.com"
domain[139]="rbl.talkactive.net"
domain[140]="recent.spam.dnsbl.sorbs.net"
domain[141]="relays.bl.kundenserver.de"
domain[142]="relays.dnsbl.sorbs.net"
domain[143]="relays.mail-abuse.org"
domain[144]="relays.nether.net"
domain[145]="rep.mailspike.net"
domain[146]="rhsbl.ahbl.org"
domain[147]="rsbl.aupads.org"
domain[148]="sa-accredit.habeas.com"
domain[149]="safe.dnsbl.sorbs.net"
domain[150]="sa.senderbase.org"
domain[151]="sbl.nszones.com"
domain[152]="sbl-xbl.spamhaus.org"
domain[153]="score.senderscore.com"
domain[154]="service.mailblacklist.com"
domain[155]="service.mailwhitelist.com"
domain[156]="singlebl.spamgrouper.com"
domain[157]="singular.ttk.pte.hu"
domain[158]="sohul.habeas.com"
domain[159]="spam.dnsbl.anonmails.de"
domain[160]="spamlist.or.kr"
domain[161]="spam.pedantic.org"
domain[162]="spam.rbl.blockedservers.com"
domain[163]="spam.rbl.msrbl.net"
domain[164]="spamsources.fabel.dk"
domain[165]="spam.spamrats.com"
domain[166]="srn.surgate.net"
domain[167]="st.technovision.dk"
domain[168]="swl.spamhaus.org"
domain[169]="tor.dnsbl.sectoor.de"
domain[170]="tor.efnet.org"
domain[171]="torexit.dan.me.uk"
domain[172]="truncate.gbudb.net"
domain[173]="trusted.nether.net"
domain[174]="ubl.unsubscore.com"
domain[175]="unsure.nether.net"
domain[176]="v4.fullbogons.cymru.com"
domain[177]="virbl.bit.nl"
domain[178]="virbl.dnsbl.bit.nl"
domain[179]="virus.rbl.msrbl.net"
domain[180]="vote.drbl.caravan.ru"
domain[181]="vote.drbldf.dsbl.ru"
domain[182]="vote.drbl.gremlin.ru"
domain[183]="wadb.isipp.com"
domain[184]="wbl.triumf.ca"
domain[185]="web.rbl.msrbl.net"
domain[186]="whitelist.sci.kun.nl"
domain[187]="whitelist.surriel.com"
domain[188]="wl.mailspike.net"
domain[189]="wl.nszones.com"
domain[190]="work.drbl.caravan.ru"
domain[191]="work.drbldf.dsbl.ru"
domain[192]="work.drbl.gremlin.ru"
domain[193]="zen.spamhaus.org"
domain[194]="z.mailspike.net"
domain[195]="zz.countries.nerd.dk"
#/////////////////////////////////////////////////////////////////////////

# ip check again rbl..
#for (( i=0; i<=0; i++ ))
cat /tmp/rbl.tmp 2> /dev/null | while read IP;
do
#////////////////////////////////////////////////////
#echo -e "\e[32m \e[1mChecking $IP ip in RBL... \e[0m {$domain[$j]}\r"
fip=$(echo "$IP" | cut -d"." -f1)
sip=$(echo "$IP" | cut -d"." -f2)
tip=$(echo "$IP" | cut -d"." -f3)
oip=$(echo "$IP" | cut -d"." -f4)
revv=$(echo "$oip.$tip.$sip.$fip")
#/////////////////////////////////////////////////////
echo "############################################"
for (( j=0; j<=195; j++ ))
do
echo -en "\e[32m \e[1mChecking $IP in RBL ${domain[$j]}..         \e[0m\r"
ipcheck=$(dig +short $revv.${domain[$j]}|wc -l)
if [[ $ipcheck == 1 ]];
then
echo -e "\e[1m\e[31mIP $IP is Blacklisted in ${domain[$j]} \e[0m"
fi
done
done
#//////////////////////////////////////////////////////////////////////////