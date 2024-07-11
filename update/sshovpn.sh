#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                บัญชี SSH & OpenVPN $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  สร้างบัญชี SSH และ OpenVPN"
echo -e "$yy 2$y.  สร้างบัญชีทดลอง SSH และ OpenVPN"
echo -e "$yy 3$y.  การขยายอายุการใช้งานบัญชี SSH และ OpenVPN"
echo -e "$yy 4$y.  ตรวจสอบการเข้าสู่ระบบของผู้ใช้ SSH และ OpenVPN"
echo -e "$yy 5$y.  รายชื่อสมาชิก SSH และ OpenVPN"
echo -e "$yy 6$y.  ลบบัญชี SSH และ OpenVpn"
echo -e "$yy 7$y.  ลบผู้ใช้ SSH และ OpenVPN ที่หมดอายุ"
echo -e "$yy 8$y.  ตั้งค่าการฆ่าอัตโนมัติ SSH"
echo -e "$yy 9$y.  แสดงผู้ใช้ที่ทำการเข้าสู่ระบบแบบหลาย SSH"
echo -e "$yy 10$y. เริ่มบริการทั้งหมดใหม่"
echo -e "$yy 11$y. เมนูหลัก "
echo -e "$yy 12$y. ออก"
echo -e "$y-------------------------------------------------------------$wh"
read -p "เลือกจากตัวเลือก [ 1 - 12 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
trialssh
;;
3)
renewssh
;;
4)
cekssh
;;
5)
member
;;
6)
delssh
;;
7)
delexp
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
menu
;;
12)
clear
exit
;;
*)
clear
menu
;;
esac
