#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                          เมนู VLESS $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. สร้างบัญชี XRAYS Vless Websocket"
echo -e "$yy 2$y. ลบบัญชี XRAYS Vless Websocket"
echo -e "$yy 3$y. การขยายบัญชี XRAYS Vless Active Life"
echo -e "$yy 4$y. ตรวจสอบการเข้าสู่ระบบของผู้ใช้ XRAYS Vless"
echo -e "$yy 5$y. ตรวจสอบการกำหนดค่า XRAYS Vless Websocket"
echo -e "$yy 6$y. เมนู"
echo -e "$yy 7$y. ออ"
echo -e "$y-------------------------------------------------------------$wh"
read -p "เลือกจากตัวเลือก [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addvless
;;
2)
delvless
;;
3)
renewvless
;;
4)
cekvless
;;
5)
uservless
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
