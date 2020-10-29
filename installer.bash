#!/bin/bash

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Jack's Software Installer"
TITLE="Select and Install Software"
MENU="Choose one of the following use cases:"
TERMINAL=$(tty)
OPTIONS=(1 "Programming"
	 2 "OS Programming"
	 3 "Hacking"
	 4 "Server")

CHOICE=$(dialog --clear \
		--backtitle "$BACKTITLE" \
		--title "$TITLE" \
		--menu "$MENU" \
		$HEIGHT $WIDTH $CHOICE_HEIGHT \
		"${OPTiONS[@]}" \
		2>&1 >$TERMINAL)
clear
case $CHOICE in
	1)
		echo "You chose Programming"
		echo "The packages will now install"
		# apt-get
		sudo apt-get update && sudo apt-get install -y snapd nodejs && sudo snap install code --classic
		# yum
		sudo yum update && sudo yum install snapd nodejs -y && sudo snap install code --classic
		;;
	2)
		echo "You chose OS Programming"
		echo "This option is currently not available sorry"
		;;
	3)
		echo "You chose Hacking"
		echo "This option is currently not available sorry"
		;;
	4)
		echo "You chose Server"
		echo "The packages will now install"
		# apt-get
		sudo apt-get update && sudo apt-get install -y apache2 nodejs samba
		# yum
		sudo yum update && sudo yum install -y apache2 nodejs samba
		;;
esac

# PROGRAMMING
# apt-get
# sudo apt-get update && sudo apt-get install -y snapd nodejs && sudo snap install code --classic
# yum
# sudo yum update && sudo yum install snapd nodejs -y && sudo snap install code --classic

# OS PROGRAMMING
# apt-get
# 
# yum
# 

# HACKING
# apt-get
# 
# yum
# 

# SERVER
# apt-get
# sudo apt-get update && sudo apt-get install -y apache2 nodejs samba
# yum
# sudo yum update && sudo yum install -y apache2 nodejs samba
