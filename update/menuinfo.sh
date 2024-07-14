#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                          ข้อมูลเมนู $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. ข้อมูล Telkomsel Opok$wh"
echo -e "$yy 2$y. ข้อมูล Exra Unli $wh"
echo -e "$yy 3$y. ข้อมูลตัวอย่าง Payload ของ Cloudflare Websocket$wh"
echo -e "$yy 4$y. ข้อมูลตัวอย่าง เพย์โหลด TRUE/FALSE $wh"
echo -e "$yy 5$y. ตรวจสอบข้อมูลการฉีดที่มีอยู่ $wh"
echo -e "$yy 6$y. ใส่ข้อมูลสถานะการตอบสนอง $wh"
echo -e "$yy 7$y. เมนู$wh"
echo -e "$yy 8$y. ออ$wh"
echo -e "$y-------------------------------------------------------------$wh"
read -p "เลือกจากตัวเลือก [ 1 - 8 ] : " menuinfo
echo -e ""
case $menuinfo in
1)
info-tsel-opok
;;
2)
info-exra-unli
;;
3)
info-contohws
;;
4)
info-contoh-payload
;;
5)
info-cek-tersedia
;;
6)
clear
info-status-respon
;;
7)
clear
menu
;;
8)
clear
exit
;;
*)
clear
menu
;;
esac
