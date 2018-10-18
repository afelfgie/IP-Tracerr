#!/system/xbin/bash
# mmk VS kntl
# FuckYouBngst

#color
underlined='\033[04m'
blue='\033[34;1m'
green='\033[32;1m'
purple='\033[35;1m'
cyan='\033[36;1m'
cn='\033[01;32m'
red='\033[31;1m'
white='\033[37;1m'
yellow='\033[33;1m'
lightgreen='\e[1;32m'
unknown='\033[39;1m'

checkRootStatus(){

        userPriv="none"

        isRoot=$(whoami | grep root)

        case "$isRoot" in

                "root")
                userPriv="root"

	esac

        if [ "$userPriv" != "root" ]; then
                noRootAccess
        fi

}


noRootAccess(){
echo ""
echo "\033[31;1m[!] No Root Access..."
echo ""
echo "Please login as a root user and try again!"
echo ""
echo "Press ENTER to exit this program..."
read pause
exit
}

trap ctrl_c INT
ctrl_c(){ #CTRL+C
clear
echo $red"What Happen's...?"
sleep 1
sh $0
}
yourip(){ #Track Your Ip Address
checkRootStatus
clear
echo "\033[37;1mPress \033[31;1m{ENTER} \033[37;1mTo Continue"
read enter
command=$(wget https://ipapi.co/yaml/ -q -O ip)
clear
echo "\033[37;1m[==========\033[31;1mYOUR IP\033[37;1m==========]"
echo "\033[37;1m"
cat ip
echo " "
echo "\033[37;1m[==========\033[31;1mYOUR IP\033[37;1m==========]"
rm ip
echo "\033[37;1m"
echo "\033[37;1mPress \033[31;1m{ENTER} \033[37;1mFor Back To Menu"
read enter
}
trackip(){ #Track Ip Address
checkRootStatus
clear
echo "\033[37;1mPress \033[31;1m{ENTER} \033[37;1mTo Continue"
read enter
clear
echo "\033[37;1m"
read -p "Input IP Address --> " target
command=$(wget https://ipapi.co/$target/yaml/ -q -O .-)
clear
echo "\033[37;1m[==========\033[31;1mIP TARGET\033[37;1m==========]"
echo "\033[37;1m"
cat .-
echo " "
echo "\033[37;1m[==========\033[31;1mIP TARGET\033[37;1m==========]"
rm .-
echo "\033[37;1m"
echo "\033[37;1mPress \033[31;1m{ENTER} \033[37;1mFor Back To Menu"
read enter
}

about(){ #About
clear
echo $red
figlet -f future "IP-Track"
echo $blue"[============================================>"
echo $yellow "[+]Tool Name : \033[36;1mIP-Tracer"
echo $yellow "[+]Code      : \033[36;1mshell & bash"
echo $yellow "[+]Author    : \033[36;1mGunadiCBR"
echo $yellow "[+]Contack   : \033[36;1m6285341xxxxxx"
echo $yellow "[+]Version   : \033[36;1m1.3"
echo $yellow "[+]Date      : \033[36;1m19-08-2018"
echo $yellow "[+]Github    : \033[36;1mhttps://github.com/afelfgie"
echo $yellow "[+]Team      : \033[36;1mMls18hckr"
echo $blue"[============================================>"
echo ""
echo "\033[32;1mIP-Tracer \033[37;1mIs Use \033[36;1mIp-Api \033[37;1mTo Retrieve any IP Address Information. Our System Will Automatically Ban Any IP Addresses Doing Ever 150 Requests Per Minute."
echo ""
echo "\033[39;1mPress \033[31;1m{ENTER} \033[39;1mFor Back To Menu"
read enter
}

Exit(){ #Exit
echo ""
echo "\033[39;1m"
echo "Are You Sure To Exit \033[36;1m[\033[31;1mY\033[37;1m/\033[31;1mN\033[36;1m]\033[37;1m"
read -p "--> " ex

if [ $ex = n ] || [ $ex = N ]
then
sleep 0.40
sh $0
fi

if [ $ex = y ] || [ $ex = Y ]
then
clear
echo ""
echo "\033[31;1m[==================================]"
echo " \033[39;1m[+] \033[36;1mThanks For Using My Tool...:)"
echo " \033[39;1m[+] \033[36;1mGood By...:)"
echo "\033[31;1m[==================================]"
echo ""
echo ""
sleep 2
echo "\033[31;5mExiting..."
sleep 2
clear
read enter
echo "\033[4;41;37mFuck You Bangsat"
exit
fi
}
MENU=1
while [ $MENU ]
do
clear
echo '\033[35;1m'
figlet -f future "IP-Tracer"
echo """
\033[31;1m[========================================$cyan>
\033[39;1m[+]\033[33;1mAuthor \033[31;1m: \033[36;1mGunadi\033[1;49;91.CBR
\033[39;1m[+]\033[33;1mTeam   \033[31;1m: \033[36;1mMls18hckr
\033[39;1m[+]\033[33;1mCode   \033[31;1m: \033[36;1mshell & bash
\033[31;1m[========================================$cyan>
\033[34;1m~\033[31;1m{\033[01;32m1\033[31;1m}\033[34;1m~\033[37;1mTrack Your Ip Address
\033[34;1m~\033[31;1m{\033[01;32m2\033[31;1m}\033[34;1m~\033[37;1mTrack Ip Address
\033[34;1m~\033[31;1m{\033[01;32m3\033[31;1m}\033[34;1m~\033[37;1mAbout
\033[34;1m~\033[31;1m{\033[01;32m0\033[31;1m}\033[34;1m~\033[36;1mExit
\033[31;1m[========================================$cyan>"""
echo ""
echo "  \033[37;1m╭─\033[31;1mGunadiCBR\033[37;1m@\033[36;1mlocalhost \033[35;1m~ \033[34;1mIP-Tracer\033[39;1m"
read -p "  ╰─$ " MENU

case $MENU in
1) yourip
;;
2) trackip
;;
3) about
;;
0) Exit
;;
*) echo ""
echo "\033[31;1mCommand \033[36;1m$MENU\033[31;1m Not Found \033[31;1m!!!"
sleep 1
sh $0
esac
done




