#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                            เมนู L2TP $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y. สร้างบัญชี L2TP"
echo -e "$yy 2$y. ลบบัญชี L2TP"
echo -e "$yy 3$y. การขยายบัญชี L2TP"
echo -e "$yy 4$y. เมนู"
echo -e "$yy 5$y. ออก"
echo -e "$y-------------------------------------------------------------$wh"
read -p "เลือกจากตัวเลือก [ 1 - 7 ] : " menu
echo -e ""
case $menu in
1)
addl2tp
;;
2)
dell2tp
;;
3)
renewl2tp
;;
4)
clear
menu
;;
5)
clear
exit
;;
*)
clear
menu
;;
esac
