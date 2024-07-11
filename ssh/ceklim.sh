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
echo " "
echo "===========================================";
echo " ";
if [ -e "/root/log-limit.txt" ]; then
echo "ผู้ใช้ที่ละเมิดขีดจำกัดสูงสุด";
echo "เวลา - ชื่อผู้ใช้ - จำนวนการเข้าสู่ระบบหลายระบบ"
echo "-------------------------------------";
cat /root/log-limit.txt
else
echo " ไม่มีผู้ใช้รายใดที่กระทำการละเมิด"
echo " "
echo " or"
echo " "
echo " ยังไม่ได้ดำเนินการสคริปต์จำกัดผู้ใช้"
fi
echo " ";
echo "===========================================";
echo " ";