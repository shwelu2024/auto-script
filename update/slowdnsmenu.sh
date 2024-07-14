#!/bin/bash
clear
slowdns () {
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%40s%s%-12s\n' "MENU SLOWDNS MANAGER" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo -e "\033[0;36m#===================================================#\033[m"
echo -e "\033[0;36m# .|'''.|'||                '||''|. '|.   '|'.|'''.|#\033[m"
echo -e "\033[0;36m# ||..  ' ||  ... ... ... ...||   || |'|   | ||..  '#\033[m"
echo -e "\033[0;36m#  ''|||. ||.|  '|.||  ||  | ||    ||| '|. |  ''|||.#\033[m"
echo -e "\033[0;36m#.     '||||||   || ||| |||  ||    |||   |||.     '|#\033[m"
echo -e "\033[0;36m#|'....|'.||.'|..|'  |   |  .||...|'.|.   '||'....|'#\033[m"
echo -e "\033[0;36m#---------------------------------------------------#\033[m"
echo -e "\033[0;36m#\033[m \033[0;31mSlowDNS | SANTAI\033[m \033[0;36m#\033[m"
echo -e "\033[0;36m#===================================================#\033[m"
    echo ""
    echo -e "\033[0;36m[01]\033[m | ติดตั้ง SlowDNS SSH"
    echo -e "\033[0;36m[02]\033[m | ติดตั้ง SlowDNS SSL"
    echo -e "\033[0;36m[03]\033[m | ติดตั้ง SlowDNS DROP"
    echo -e "\033[0;36m[04]\033[m | ติดตั้งถุงเท้า SlowDNS"
    echo -e "\033[0;36m[05]\033[m | ดูข้อมูล"
    echo -e "\033[0;36m[06]\033[m | เริ่ม SlowDNS"
    echo -e "\033[0;36m[07]\033[m | รีสตาร์ท SlowDNS"
    echo -e "\033[0;36m[08]\033[m | หยุด SlowDNS"
    echo -e "\033[0;36m[09]\033[m | ลบ SlowDNS"
    echo -e "\033[0;36m[10]\033[m | อัปเดต/ติดตั้งใหม่"
    echo -e "\033[0;36m[11]\033[m | ลบสคริปต์"
    echo -e "\033[0;36m[00]\033[m | ออกไป"
    echo ""
    echo -ne "\033[0;36mคุณอยากจะทำอะไร?:\0033[m " && read opcao
    case $opcao in
    1) Opcao1 ;;
    2) Opcao2 ;;
    3) Opcao3 ;;
    4) Opcao4 ;;
    5) Opcao5 ;;
    6) Opcao6 ;;
    7) Opcao7 ;;
    8) Opcao8 ;;
    9) Opcao9 ;;
    10) Opcao10 ;;
    11) Opcao11 ;;
    0) Sair ;;
    *) "Calma Barboleta" ; echo ; slowdns ;;
    esac
    }

Opcao1 () {
    clear
    bash /etc/slowdns/slowdns-ssh
}

Opcao2 () {
    clear
    bash /etc/slowdns/slowdns-ssl
}

Opcao3 () {
    clear
    bash /etc/slowdns/slowdns-drop
}

Opcao4 () {
    clear
    bash /etc/slowdns/slowdns-socks
}


Opcao5 () {
    clear
    bash /etc/slowdns/slowdns-info
}

Opcao6 () {
    clear
    bash /etc/slowdns/startdns
}

Opcao7 () {
    clear
    bash /etc/slowdns/restartdns
}

Opcao8 () {
    clear
    bash /etc/slowdns/stopdns
}

Opcao9 () {
     clear
    bash /etc/slowdns/stopdns
    bash /etc/slowdns/remove-slow
}

Opcao10 () {
    clear
    wget https://raw.githubusercontent.com/shwelu2024/auto-script/main/Slowdns/update
    chmod +x update
    bash update
}

Opcao11 () {
     clear
    bash /etc/slowdns/remove-slow
    echo -e "\033[0;31mถอนการติดตั้ง SlowDNS แล้ว!\033[0m"
    sleep 2
    rm /bin/slowdns
}

Sair() {
    clear
    exit
}
clear
slowdns
