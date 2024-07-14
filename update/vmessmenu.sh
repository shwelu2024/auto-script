#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                             เมนู VMESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. สร้างบัญชี XRAYS Vmess Websocket"
echo -e "$yy 2$y. ลบบัญชี XRAYS Vmess Websocket"
echo -e "$yy 3$y. การขยายบัญชี XRAYS Vmess Active Life"
echo -e "$yy 4$y. ตรวจสอบการเข้าสู่ระบบของผู้ใช้ XRAYS Vmess"
echo -e "$yy 5$y. ตรวจสอบการกำหนดค่า XRAYS Vmess Websocket"
echo -e "$yy 6$y. เมนู"
echo -e "$yy 7$y. ออก"
echo -e "$y-------------------------------------------------------------$wh"
read -p "เลือกจากตัวเลือก [ 1 - 7 ] : " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
delvmess
;;
3)
renewvmess
;;
4)
cekvmess
;;
5)
userv2ray
;;
6)
clear
menu
;;
7)
clear
exit
;;
*)
clear
menu
;;
esac
