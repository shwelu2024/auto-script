#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
## Foreground
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
# Getting CPU Information
cores=$(awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo)
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*/} / ${corediilik:-1}))"
cpu_usage+="%"
load_cpu=$(printf '%-3s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
#Domain & IPVPS
domain=$(cat /etc/xray/domain)
sldomain=$(cat /root/nsdomain)
IPVPS=$(curl -s ipinfo.io/ip)
IPVPS=$(curl -s ipinfo.io/ip )
IPVPS=$(curl -sS ipv4.icanhazip.com)
IPVPS=$(curl -sS ifconfig.me )
# TOTAL ACC CREATE SSH/XRAYS
ssh="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
vmess=$(grep -c -E "^### " "/etc/xray/config.json")
vless=$(grep -c -E "^#### " "/etc/xray/config.json")
tr=$(grep -c -E "^#&# " "/etc/xray/config.json")
trgo=$(grep -c -E "^### " "/etc/trojan-go/akun.conf")
# OS Uptime
uptime="$(uptime -p | cut -d " " -f 2-10)"
# RAM Info
tram=$(free -m | awk 'NR==2 {print $2}')
uram=$(free -m | awk 'NR==2 {print $3}')
# Total BANDWIDTH
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "$(date +"%b '%y")" | awk '{print $9" "substr ($10, 1, 1)}')"
echo " "
echo -e "$y                        เมนูหลัก $wh"
echo -e "$y                สคริปต์ Mod โดย TaiVpnPro $wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                ${WB} ⪼ ข้อมูลเซิร์ฟเวอร์ ⪻ ${NC}             "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}➢${NC} ${YB}ระบบปฏิบัติการ       :  "$(hostnamectl | grep "Operating System" | cut -d ' ' -f5-) ${NC}         
echo -e "  ${RB}➢${NC} ${YB}เคอร์เนล   :  $(uname -r) ${NC} "
echo -e "  ${RB}➢${NC} ${YB}เวลาให้บริการ   :  $uptime ${NC} "
echo -e "  ${RB}➢${NC} ${YB}ซีพียู      :  ${cores} core ($load_cpu)  ${NC} "
echo -e "  ${RB}➢${NC} ${YB}แรม      :  $uram MB / $tram MB ${NC} "
echo -e "  ${RB}➢${NC} ${YB}โดเมน   :  $domain ${NC} "
echo -e "  ${RB}➢${NC} ${YB}เนมเซิร์ฟเวอร์    :  $sldomain ${NC} "
echo -e "  ${RB}➢${NC} ${YB}ไอพี    :  $IPVPS ${NC} "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "                  ${WB} ⪼ แบนด์วิธรวม ⪻ ${NC}            "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "  ${RB}➢${NC} ${YB}การใช้งานรายวัน         : $ttoday ${NC}"
echo -e "  ${RB}➢${NC} ${YB}การใช้งานเมื่อวานนี้     : $tyest ${NC}"
echo -e "  ${RB}➢${NC} ${YB}การใช้งานรายเดือน       : $tmon ${NC}"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "   ${YB} SSH     VMESS     VLESS     TROJAN     TROJANGO          "
echo -e "${y}     $ssh        $vmess         $vless         $tr           $trgo         "
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "$YB 1$y.  เมนู SSH WEBSOCKET  $wh"
echo -e "$YB 2$y.  เมนู L2TP$wh"
echo -e "$YB 3$y.  เมนู PPTP$wh"
echo -e "$YB 4$y.  เมนู SSTP$wh"
echo -e "$YB 5$y.  เมนู WIREGUARD$wh"
echo -e "$YB 6$y.  เมนู SHADOWSOCKS$wh"
echo -e "$YB 7$y.  เมนู SHADOWSOCKSR$wh"
echo -e "$YB 8$y.  เมนู XRAY VMESS$wh"
echo -e "$YB 9$y.  เมนู XRAY VLESS$wh"
echo -e "$YB 10$y. เมนู XRAY TROJAN$wh"
echo -e "$YB 11$y. เมนู TROJAN$wh"
echo -e "$YB 12$y. ข้อมูลพอร์ตทั้งหมด$wh"
echo -e "$YB 13$y. เวอร์ชันเอ็กซ์เรย์$wh"
echo -e "$YB 14$y. ตรวจสอบพอร์ต IP$wh"
echo -e "$YB 15$y. ตรวจสอบบริการ VPN$wh"
echo -e "$YB 16$y. เมนูอัพเดต$wh"
echo -e "$YB 17$y. แก้ไขข้อผิดพลาด SSLH + WS-TLS หลังจากรีบูต$wh"
echo -e "$YB 18$y. การตั้งค่า$wh"
echo -e "$YB 19$y. ตรวจสอบซีพียูและแรม$wh"
echo -e "$YB 20$y. ตรวจสอบแบนด์วิธ$wh"
echo -e "$YB 21$y. ตัวเปลี่ยน DNS$wh"
echo -e "$YB 22$y. ตัวตรวจสอบ NETFLIX$wh"
echo -e "$YB 23$y. ลบผู้ใช้ที่หมดอายุ$wh"
echo -e "$YB 24$y. ออก$wh"
echo -e "${BB}————————————————————————————————————————————————————————${NC}"
echo -e "${YB}"
read -p "เลือกจากตัวเลือก [ 1 - 24 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
info
;;
13)
clear
xray version
;;
14)
clear
ipsaya
;;
15)
clear
running
;;
16)
clear
updatemenu
;;
17)
clear
sl-fix
;;
18)
clear
setmenu
;;
24)
clear
exit
;;
20)
clear
vnstat
;;
21)
clear
dns
;;
22)
clear
netf
;;
23)
clear
delexp && xp && restart
;;
19)
clear
htop
;;
*)
clear
menu
;;
esac
