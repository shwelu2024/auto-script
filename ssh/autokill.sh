#!/bin/bash
# สคริปต์ Mod โดย TaiVpnPro
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
echo "กำลังตรวจสอบ VPS"
IZIN=$( curl ipinfo.io/ip | grep $MYIP )
if [ $MYIP = $MYIP ]; then
echo -e "${NC}${GREEN}ได้รับอนุญาตแล้ว...${NC}"
else
echo -e "${NC}${RED}การอนุญาตถูกปฏิเสธ!${NC}";
echo -e "${NC}${LIGHT}Fuck You!!"
exit 0
fi
clear
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(grep -c -E "^# Autokill" /etc/cron.d/tendang)
if [[ "$cek" = "1" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e ""
echo -e "=================================="
echo -e "       สถานะฆ่าอัตโนมัติ $sts       "
echo -e "=================================="
echo -e "1. ฆ่าอัตโนมัติหลังจาก 5 นาที"
echo -e "2. ฆ่าอัตโนมัติหลังจาก 10 นาที"
echo -e "3. ฆ่าอัตโนมัติหลังจาก 15 นาที"
echo -e "4. ปิด AutoKill/MultiLogin"
echo -e "5. ออก"
echo -e "=================================="                                                                                                          
echo -e ""
read -p "Select From Options [1-4 or x] :  " AutoKill
read -p "Multilogin จำนวนสูงสุดที่อนุญาต: " max
echo -e ""
case $AutoKill in
                1)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/5 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      อนุญาต MultiLogin : $max"
                echo -e "      ฆ่าอัตโนมัติทุกๆ : 5 นาที"      
                echo -e ""
                echo -e "======================================"                                                                                                                                 
                exit                                                                  
                ;;
                2)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/10 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      อนุญาต MultiLogin : $max"
                echo -e "      ฆ่าอัตโนมัติทุกๆ : 10 นาที"
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                3)
                echo -e ""
                sleep 1
                clear
                echo > /etc/cron.d/tendang
                echo "# Autokill" >>/etc/cron.d/tendang
                echo "*/15 * * * *  root /usr/bin/tendang $max" >>/etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      อนุญาต MultiLogin : $max"
                echo -e "      ฆ่าอัตโนมัติทุกๆ : 15 นาที"
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                4)
                clear
                echo > /etc/cron.d/tendang
                echo -e ""
                echo -e "======================================"
                echo -e ""
                echo -e "      ปิด AutoKill MultiLogin แล้ว  "
                echo -e ""
                echo -e "======================================"
                exit
                ;;
                x)
                clear
                exit
                ;;
        esac