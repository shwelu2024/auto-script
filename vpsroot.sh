#!/bin/bash
# Mod By NevermoreSSH
#echo "$crot    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/sshd_config https://raw.githubusercontent.com/shwelu2024/auto-script/main/sshd_config;
systemctl restart sshd;
clear;
echo -e "ใส่รหัสผ่าน:";
read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
printf "กรุณาบันทึกข้อมูลบัญชี VPS นี้
============================================
Akun Root (Akun Utama)
Ip address = $(curl -Ls http://ipinfo.io/ip)
Username   = root
Password   = $pwe
============================================
echo "";
exit;
