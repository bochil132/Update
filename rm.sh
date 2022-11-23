clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}               • REGISTER IPVPS •              ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
rm -rf /root/Update
read -p "│  NEW IPVPS : " daftar
echo -e "$COLOR1│${NC}"
echo -e "$COLOR1│${NC}  [INFO] Checking the IPVPS!"
sleep 1
REQIP=$(curl -sS https://raw.githubusercontent.com/bochil132/Update/main/ip | awk '{print $4}' | grep $daftar)
if [[ $daftar = $REQIP ]]; then
echo -e "$COLOR1│${NC}  [INFO] VPS IP Already Registered!!"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}             • ARTA MAULANA PREMI •              $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ip
else
echo -e "$COLOR1│${NC}  [INFO] OK! IP VPS is not Registered!"
echo -e "$COLOR1│${NC}  [INFO] Lets Regester it!"
sleep 3
clear
fi
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}               • REGISTER IPVPS •              ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
read -p "│  User Name  : " client
if [ -z $client ]; then
cd
echo -e "$COLOR1│${NC}  [INFO] Please Input client"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}             • ARTA MAULANA PREMI •              $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ip
fi


read -p "│  EXP Date   : " exp
read -p "│  Git Token   : " token
if [ -z $exp ]; then
cd
echo -e "$COLOR1│${NC}   [INFO] Please Input exp date"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}             • ARTA MAULANA PREMI •              $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ip
fi

x="ok"

satu="ON"
dua="OFF"
while true $x != "ok"
do
echo -e "$COLOR1│${NC}"
echo -e "$COLOR1│${NC}  ${COLOR1}[01]${NC} • ADMIN   ${COLOR1}[02]${NC} • NORMAL"
echo -e "$COLOR1│${NC}"
echo -ne "│  Input your choice : "; read list
echo ""
case "$list" in 
   1) isadmin="$satu";break;;
   2) isadmin="$dua";break;;
esac
done


exp=$(date -d "$exp days" +"%Y-%m-%d")
hariini=$(date -d "0 days" +"%Y-%m-%d")
git config --global user.email "ngabhoax@gmail.com" &> /dev/null
git config --global user.name "bochil132" &> /dev/null
git clone https://github.com/bochil132/Update.git &> /dev/null
cd /root/Update/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
touch ip &> /dev/null
touch newuser &> /dev/null
TEXT="
Name        : $client 
Admin Panel : $isadmin
Exp         : $exp 
IPVPS       : $daftar 
Reg Date    : $hariini
" 
echo "${TEXT}" >>/root/Update/newuser 
echo "### $client $exp $daftar $isadmin" >>/root/Update/ip
git add .
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/bochil132/Update.git &> /dev/null
git push -f https://$token@github.com/bochil132/Update.git &> /dev/null
sleep 1
clear
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC} ${COLBG1}               • REGISTER IPVPS •              ${NC} $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}"
echo -e "$COLOR1┌─────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${NC}  Client IP Regested Successfully"
echo -e "$COLOR1│${NC}"
echo -e "$COLOR1│${NC}  Client Name   : $client"
echo -e "$COLOR1│${NC}  Admin Panel   : $isadmin"
echo -e "$COLOR1│${NC}  IP VPS        : $daftar"
echo -e "$COLOR1│${NC}  Register Date : $hariini"
echo -e "$COLOR1│${NC}  Expired Date  : $exp"
cd
rm -rf /root/Update
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo -e "$COLOR1┌────────────────────── BY ───────────────────────┐${NC}"
echo -e "$COLOR1│${NC}             • ARTA MAULANA PREMI •              $COLOR1│$NC"
echo -e "$COLOR1└─────────────────────────────────────────────────┘${NC}" 
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
menu-ip
