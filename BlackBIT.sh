#! /bin/bash
#=============================================================================
# These are the colors in this script :)
cyan='\e[0;36m'
green='\e[0;34m'
lightgreen='\e[0;32m'
white='\e[0;37m'
red='\e[0;31m'
yellow='\e[0;33m'
#=============================[ Banner ]======================================
function banner(){
	echo -e $red"=============================================================="
	echo -e $lightgreen"	      WELCOME TO BL4CKBIT.SH By Seang Y"
	echo -e $red"=============================================================="
	LIP=`hostname -I`
	echo -e $white"{!} Hostname: $cyan$(hostname)"
	echo -e $white"{!} Operating System: $cyan$(uname -s -m)"
	echo -e $white"{!} Your LAN IP address is: $cyan $LIP"
}
#===============================[ Options ]===================================
function option(){
	echo -e -n $green"[!] Do you want to install tools? [Y/n]:"
	read ans
		if [[ "$ans" = "Y" || "$ans" = "y" ]]
			then 
			echo -e ""$cyan
			mainmenu

		elif [[ "$ans" = "N" || "$ans" = "n" ]]
			then
			echo -e $red"[!] GOOD BYE !"

		elif [[ "$ans" != "N" || "$ans" != "n" || "$ans" != "Y" || "$ans" != "y" ]]
			then
			echo -e $red"[!] Invalid Option !"
		fi
		}
#============================[ Main Menu ]======================================
function mainmenu(){
	echo -e $cyan"=============================================================="
	Var1=`echo "[1]_Information Gathering Tools"`
	Var2=`echo "[2]_System Scanning Tools"`
	Var3=`echo "[3]_Gaining Access Tools"`
	Var4=`echo "[4]_Maintaining Access Tools"`
	Var5=`echo "[5]_Covering Track Tools"`
	Var6=`echo "[6]_About ME"`
	Var7=`echo "[0]_EXIT"`
	echo $Var1
	echo $Var2
	echo $Var3
	echo $Var4
	echo $Var5
	echo $Var6
	echo $Var7
	echo -e "=============================================================="$white
	read -p "[!] Choose one of the above categories to install:" catg
	numbermain
	echo -e $cyan""
}
#===========================[ Main Catgories ]==================================
function infogat(){
	echo "[1]_DNS Enumeration"
	echo "[2]_The Harverster"
	echo "[3]_DNS Reconnaincence"
	echo -e "[0]_Main Menu"$white
	read -p "[!] Please choose the above options:" choose
		if [ "$choose" = "1" ]
		then	
			which dnsenum > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The DNS Enum is already installed in the system"$cyan
				echo -e $white"CATEGORY [1]"$cyan
				infogat
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."$cyan
				apt-get install -y dnsenum >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The DNS Enum is successfully installed !"$cyan
				infogat
			fi
		elif [ "$choose" = "2" ]
		then
			which theharvester > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Harvester is already installed in the system"
				echo -e $white"CATEGORY [1]"$cyan
				infogat
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y theharvester >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Harvester is successfully installed !"$cyan
				infogat
			fi
		elif [ "$choose" = "3" ]
		then
			which dnsrecon > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The DNS Recon is already installed in the system"$cyan	
				echo -e $white"CATEGORY [1]"$cyan
				infogat
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y dnsrecon >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The DNS Recon is successfully installed !"$cyan
				infogat
			fi
		elif [ "$choose" = "0" ]
		then
			clear
			banner
			echo -e $cyan"[!] MAIN MENU"
			mainmenu	
		else
			echo -e $white"[!] Choose one of the above options"$cyan
			infogat
				
		fi
}
function scanning(){
	echo "[1]_Nmap"
	echo "[2]_Netdiscover"
	echo "[3]_Arp-Scan"
	echo -e "[0]_Main Menu"$white
	read -p "[!] Please choose the above options:" choose
		if [ "$choose" = "1" ]
		then	
			which nmap > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Nmap is already installed in the system"$cyan
				echo -e $white"CATEGORY [2]"$cyan
				scanning
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."$cyan
				apt-get install -y nmap >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Nmap is successfully installed !"$cyan
				scanning
			fi
		elif [ "$choose" = "2" ]
		then
			which netdiscover > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Netdiscover is already installed in the system"
				echo -e $white"CATEGORY [2]"$cyan
				scanning
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y netdiscover >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Netdiscover is successfully installed !"$cyan
				scanning
			fi
		elif [ "$choose" = "3" ]
		then
			which arp-scan > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Arp-scan is already installed in the system"$cyan	
				echo -e $white"CATEGORY [2]"$cyan
				scanning
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y arp-scan >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Arp-scan is successfully installed !"$cyan
				scanning
			fi
		elif [ "$choose" = "0" ]
		then
			clear
			banner
			echo ""
			echo -e $cyan"[!] MAIN MENU"
			mainmenu	
		else
			echo -e $white"[!] Choose one of the above options"$cyan
			scanning
				
		fi
}
function gaining(){
	echo "[1]_Metasploit"
	echo "[2]_SET(Social Engineering Toolkit)"
	echo "[3]_SQLmap"
	echo -e "[0]_Main Menu"$white
	read -p "[!] Please choose the above options:" choose
		if [ "$choose" = "1" ]
		then	
			which msfconsole > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Metasploit Framwork is already installed in the system"$cyan
				echo -e $white"CATEGORY [3]"$cyan
				gaining
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."$cyan
				apt-get install -y metasploit-framework >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Metasploit Framwork is successfully installed !"$cyan
				gaining
			fi
		elif [ "$choose" = "2" ]
		then
			which beef-xss > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Beef Framework is already installed in the system"
				echo -e $white"CATEGORY [3]"$cyan
				gaining
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y beef-xss >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Beef Framework is successfully installed !"$cyan
				gaining
			fi
		elif [ "$choose" = "3" ]
		then
			which sqlmap > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The SQLMap is already installed in the system"$cyan	
				echo -e $white"CATEGORY [3]"$cyan
				gaining
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y sqlmap >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The SQLMap is successfully installed !"$cyan
				gaining
			fi
		elif [ "$choose" = "0" ]
		then
			clear
			banner
			echo ""
			echo -e $cyan"[!] MAIN MENU"
			mainmenu	
		else
			echo -e $white"[!] Choose one of the above options"$cyan
			gaining
				
		fi

}
function maintain(){
	echo "[1]_Veil-Evasion"
	echo "[2]_Shellter"
	echo "[3]_BDFactory"
	echo -e "[0]_Main Menu"$white
	read -p "[!] Please choose the above options:" choose
		if [ "$choose" = "1" ]
		then	
			which veil-evasion > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Veil-Evasion Framwork is already installed in the system"$cyan
				echo -e $white"CATEGORY [4]"$cyan
				maintain
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."$cyan
				apt-get install -y veil-evasion >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Veil-Evasion Framwork is successfully installed !"$cyan
				maintain
			fi
		elif [ "$choose" = "2" ]
		then
			which shellter > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Shellter is already installed in the system"
				echo -e $white"CATEGORY [3]"$cyan
				maintain
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y shellter >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Shellter is successfully installed !"$cyan
				maintain
			fi
		elif [ "$choose" = "3" ]
		then
			which backdoor-factory > /dev/null
			if [ $? -eq 0 ]
			then
				echo -e $lightgreen"[!] The Backdoor-Factory is already installed in the system"$cyan	
				echo -e $white"CATEGORY [3]"$cyan
				maintain
			else
				echo -e $lightgreen"[!] The tool is being installed. Please wait ..."
				apt-get install -y backdoor-factory >/dev/null
				sleep 2
				echo -e $lightgreen"[!] DONE..."
				echo -e $lightgreen"[!] The Backdoor-Factory is successfully installed !"$cyan
				maintain
			fi
		elif [ "$choose" = "0" ]
		then
			clear
			banner
			echo ""
			echo -e $cyan"[!] MAIN MENU"
			mainmenu	
		else
			echo -e $white"[!] Choose one of the above options"$cyan
			maintain
				
		fi
}
function cover(){
	echo "[1]_Clear History For Linux OS"
	echo "[2]_Clear Log For Windows OS"
	echo -e "[0]_Main Menu"$white
	read -p "[!] Please choose the above options:" choose
		if [ "$choose" = "1" ]
		then
				touch NoTrack.sh > /dev/null
				echo -e $lightgreen"[!] Generating SHELL Script ..."
				echo "#! /bin/bash" > NoTrack.sh
				echo "shred -zu /root/.bash_history" >> NoTrack.sh
				echo "export HISTSIZE=0" >> NoTrack.sh
				chmod 755 NoTrack.sh
				mkdir ./Notrack 2> /dev/null
				mv NoTrack.sh ./Notrack/NoTrack.sh
				echo "[!] The SHELL Script is successfully generated !"
				echo -e $red"[!] Please run the script in Notrack Folder on victim terminal"
				echo -e $white"CATEGORY [5]"$cyan
				cover

		elif [ "$choose" = "2" ]
		then
			mkdir ./Notrack 2> /dev/null
			echo -e $lightgreen"[!] Downloading Batch File ..."
			wget http://www.tenforums.com/attachments/tutorials/31601d1439670760-event-viewer-clear-all-event-logs-windows-clear_event_viewer_logs.bat -O ./Notrack/ClearLog.bat		
			echo "[!] The batch file is successfully downloaded !"
			echo -e $red"[!] Please run the Batch file in Notrack Folder on victim PC"
			echo -e $white"CATEGORY [5]"$cyan
			cover

		elif [ "$choose" = "0" ]
		then
			clear
			banner
			echo ""
			echo -e $cyan"[!] MAIN MENU"
			mainmenu	

		else
			echo -e $white"[!] Choose one of the above options:"$cyan
			echo -e $white"CATEGORY [5]"$cyan
			cover
		fi				
}
#============================[ Number Options ]==================================
function numbermain(){
	if [ "$catg" = "1" ]
	then
		echo "===================================="
		echo $Var1
		echo "===================================="
		echo -e $white"CATEGORY [1]"$cyan
		infogat
	elif [ "$catg" = "2" ]
	then
		echo "===================================="
		echo $Var2
		echo "===================================="
		echo -e $white"CATEGORY [2]"$cyan
		scanning
	elif [ "$catg" = "3" ]
	then
		echo "===================================="
		echo $Var3
		echo "===================================="
		echo -e $white"CATEGORY [3]"$cyan
		gaining
		
	elif [ "$catg" = "4" ]
	then
		echo "===================================="
		echo $Var4
		echo "===================================="
		echo -e $white"CATEGORY [4]"$cyan
		maintain
	elif [ "$catg" = "5" ]
	then
		echo "===================================="
		echo $Var5
		echo "===================================="
		echo -e $white"CATEGORY [5]"$cyan
		cover
	elif [ "$catg" = "6" ]
	then	
		echo -e $green"*----------------------------------------------------------------------"
		echo -e $green"[!] Script Name : BlackBIT.sh					      |"
		echo -e $green"[!] Version : v1.0						      |"
		echo "[*] Coded By: PHUON Seang Y					      |"
		echo "[*] Facebook Profile : facebook.com/seangyi.phuon - [Seang Y EH]      |"
		echo "[*] Website : http://toolkitz.blogspot.com			      |"
		echo "[*] Big Thanks to: Github, Kali OS, Google :)			      |"
		echo "[*] EDUCATIONAL PURPOSE ONLY					      |"
		echo "*----------------------------------------------------------------------"
		pause
		echo -e ""$cyan
		banner		
		mainmenu
	elif [ "$catg" = "0" ]
	then
		echo -e $red"[!] GOOD BYE !"
		exit
	else
		echo -e $red"[!] Invalid Option"$cyan
		mainmenu
	
	fi
}
function pause(){
		read -sn 1 -p "[!] Press any key to continue..."
		echo -e ""$cyan
}
banner
option
