#!/usr/bin/env bash

# Colors for UI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

# Function to check internet connectivity
check_internet() {
  echo -e "${YELLOW}Checking internet connection... 🌐${NC}"
  ping -c 1 google.com >/dev/null 2>&1
  if [ "$?" != '0' ]; then
    echo -e "${RED}It seems like you are not connected to the internet. 🙁${NC}"
    echo -e "${CYAN}Please check your connection and try again. 🚀${NC}"
    exit 2
  fi
  echo -e "${GREEN}Internet is working fine! ✅${NC}"
}

# About Me Section
about_me() {
  clear
  echo -e "${CYAN}"
  echo "--------------------------------------------"
  echo "               ABOUT ME                     "
  echo "--------------------------------------------"
  echo -e "${YELLOW}Hello! Friends, My name is ${GREEN}Sunil${YELLOW}, and I am the creator of the ${GREEN}Noob Cyber Tech${YELLOW} channel."
  echo ""
  echo "On this channel, we learn ethical hacking, cybersecurity, and bug bounty together."
  echo "I create practical tutorials and tips for beginners and tech enthusiasts to make learning easy and enjoyable!"
  echo ""
  echo -e "${CYAN}Why Subscribe?${NC}"
  echo -e "${YELLOW}👉 Want to set up hacking labs? Learn to use tools? Start with bug bounty?${NC}"
  echo -e "${RED}Then make sure to subscribe to the channel and hit the bell icon for updates!"
  echo ""
  echo -e "${CYAN}YouTube Channel: ${GREEN}https://youtube.com/@noobcybertech2024?si=MVKSaevhkBnmceKZ${NC}"
  echo -e "${CYAN}--------------------------------------------${NC}"
}

# Function to open links
open_link() {
  echo -e "${GREEN}Opening link...${NC}"
  termux-open-url "$1" >/dev/null 2>&1
}

# Social Media links submenu
submenu_social_media() {
  clear
  echo -e "${CYAN}"
  echo -e "${GREEN}{1} YouTube"
  echo -e "${GREEN}{2} Facebook"
  echo -e "${GREEN}{3} Telegram"
  echo -e "${GREEN}{4} Instagram"
  echo -e "${GREEN}{5} WhatsApp Group"
  echo -e "${CYAN}{0} Back to Main Menu${NC}"
  echo -e "${CYAN}--------------------------------------------${NC}"
  read -p "Enter your choice: " social_choice
  case $social_choice in
    1) open_link "https://youtube.com/@noobcybertech2024?si=MVKSaevhkBnmceKZ" ;;
    2) open_link "https://www.facebook.com/share/1HrTAb9GoH/" ;;
    3) open_link "https://t.me/Annon4you" ;;
    4) open_link "https://www.instagram.com/annon_4you" ;;
    5) open_link "https://chat.whatsapp.com/DQHA1MZ46RYGlyIIOPZR2T" ;;
    0) main_menu ;;
    *) echo -e "${RED}Invalid choice! Returning to main menu.${NC}" ; sleep 2 ; main_menu ;;
  esac
}

# Submenu for Python for Hackers
submenu_python_hackers() {
  clear
  echo -e "${CYAN}"
  echo -e "${GREEN}{1} Python for Penetration Testers"
  echo -e "${GREEN}{2} Python Hacking Complete Course"
  echo -e "${GREEN}{3} Python and Django Framework"
  echo -e "${GREEN}{4} Python All-in-One"
  echo -e "${CYAN}{0} Back to Main Menu${NC}"
  echo -e "${CYAN}--------------------------------------------${NC}"
  read -p "ENTER YOUR CHOICE : " python_choice
  case $python_choice in
    1) open_link "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/8y5DUKCZ" ;;
    2) open_link "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/h2wnzQpY" ;;
    3) open_link "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/5r4ziYSa" ;;
    4) open_link "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/JrxhRYZb" ;;
    0) main_menu ;;
    *) echo -e "${RED}Invalid input! Returning to main menu.${NC}"; sleep 2; main_menu ;;
  esac
}

# Main menu function
main_menu() {
  clear
  echo -e "${CYAN}"
  echo "                  ..............."
  echo "              .........................."
  echo "           ......',,;;;;;;;;;;;;;;,'......"
  echo "        ......,;:;,''.....''''''',;::;,......"
  echo "      .....';c:,'........',,,'......,;cc:'....."
  echo "     ....':l;''.........',,,,'.......',;co:'...."
  echo "    ....,lc,'....''.            .......'';ll,...."
  echo "   ....,l:,'......'              ........',co,...."
  echo "  ....,o:;,'.......               '......',;lo'...."
  echo "  ...'ll:;,'..''..                ........',;ol...."
  echo " ....,oc::,'.'                         ...',,cd,...."
  echo " ....:oc::;,'''..                    .....'',:d;...."
  echo " ....:oc:::;,''.',;              .;'......'',cd;...."
  echo " ....,oc:::;,'.',co.             :l:......'',ld,...."
  echo "  ....ll:::::;;:lol;             ;lc,'..''',;lc...."
  echo "  ....'lc::clollodo'             ;c:;,,,'',;ll'...."
  echo "   ....,lccloool:,..             ...',;;;;;lo'...."
  echo "    ....'clc;.         V 3.0            .'l:...."
  echo "        . .."
  echo "              [BlackHat by Sunil]"
  echo "          <<----------------------->>"
  echo -e "${GREEN}{1} HACKING MASTER CLASS"
  echo -e "${GREEN}{2} BUG BOUNTY"
  echo -e "${GREEN}{3} Technical Sagar course"
  echo -e "${GREEN}{4} Ethical Hacking & Build Python Attack & Defense Tools"
  echo -e "${GREEN}{5} PYTHON FOR HACKERS"
  echo -e "${GREEN}{6} BITTEN TECH HACKING COURSE"
  echo -e "${GREEN}{7} SOCIAL MEDIA LINKS"
  echo -e "${CYAN}{9} ABOUT ME"
  echo -e "${CYAN}{0} EXIT${NC}"
  echo -e "${CYAN}--------------------------------------------${NC}"

  read -p "ENTER YOUR CHOICE : " main_choice
  case $main_choice in
    1)
      open_link "https://drive.google.com/drive/folders/1mZwaNmPJB6OcGf-lSejIvbU8y2YxjDt4"
      ;;
    2)
      open_link "https://mega.nz/folder/7yQwiRTY#mANk-z-SHu8tvFWiNJousQ"
      ;;
    3)
      # HACKERS' CHOICE MENU
show_menu() {
  echo -e "\n🔥 {1} QUICK HACK"
  echo -e "🔥 {2} HACKSTARS"
  echo -e "🔥 {3} TECH MASTER"
  echo -e "💀 {0} EXIT"
}

execute_choice() {
  local user_choice
  read -p "Enter your choice: " user_choice

  if [[ $user_choice == 1 ]]; then
    echo "⚡ Loading QUICK HACK resource..."
    xdg-open "https://www.mediafire.com/file/mrcz8aa7ji05a2m/Quick_Hack_-_Beginners_Ethical_Hacking_Course_%2528White_Hat%2529.zip/file" >/dev/null 2>&1
  elif [[ $user_choice == 2 ]]; then
    echo "⚡ Loading HACKSTARS resource..."
    xdg-open "https://mega.nz/folder/z7RVySYJ#VZsibaQRv58Xkn9jc-" >/dev/null 2>&1
  elif [[ $user_choice == 3 ]]; then
    echo "⚡ Loading TECH MASTER resource..."
    xdg-open "https://mega.nz/folder/XqR2BQ7A#_h4rAtZXCvyaCY7Xs" >/dev/null 2>&1
  elif [[ $user_choice == 0 ]]; then
    echo "👋 Exiting... Stay safe, hacker!"
    sleep 2
    exit
  else
    echo "❌ Invalid input! Try again."
    sleep 2
    hacker_menu # Restart the menu
  fi
}

hacker_menu() {
  show_menu
  execute_choice
}

# Call the function
hacker_menu
      ;;
    4)
      xdg-open "https://drive.google.com/drive/mobile/folders/10Ujx_YgIkA5lsiS5aU8E4dMXIzw0KlG2?usp=share_link"
      ;;
    5)
      submenu_python_hackers
      ;;
    6)
      open_link "https://archive.org/download/tech-hacker-ethical-hacking-and-cyber-security-complete-bundle-bitten"
      ;;
    7)
      submenu_social_media
      ;;
    9)
      about_me
      read -n 1 -s -r -p "Press any key to return to main menu..."
      main_menu
      ;;
    0)
      echo -e "${YELLOW}Exiting....${NC}" ; sleep 2 ; exit
      ;;
    *)
      echo -e "${RED}Invalid input! Please try again.${NC}"
      sleep 2
      main_menu
      ;;
  esac
}

# Entry point
check_internet
main_menu
