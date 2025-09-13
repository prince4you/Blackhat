#!/usr/bin/env bash

# ======================================================================
# BLACKHAT TOOLKIT v6.0
# ======================================================================
# Advanced Cybersecurity Resource Manager
# ======================================================================

# Colors
RED='\033[0;38;5;196m'
GREEN='\033[0;38;5;46m'
YELLOW='\033[0;38;5;226m'
CYAN='\033[0;38;5;51m'
BLUE='\033[0;38;5;21m'
PURPLE='\033[0;38;5;93m'
ORANGE='\033[0;38;5;202m'
WHITE='\033[1;37m'
NC='\033[0m'

# Configuration
VERSION="2.0"
AUTHOR="Sunil [ Prince4you ] "
CHANNEL_NAME="Noob Cyber Tech"

# Platform Detection
detect_platform() {
    if [[ $(uname -o) == *Android* ]] || [[ -d /data/data/com.termux/files/usr ]]; then
        echo "termux"
    elif [[ -f /etc/kali-release ]]; then
        echo "kali"
    elif [[ -f /etc/parrot-release ]]; then
        echo "parrot"
    elif [[ -f /etc/debian_version ]]; then
        echo "debian"
    elif [[ $(uname) == "Darwin" ]]; then
        echo "macos"
    else
        echo "linux"
    fi
}

PLATFORM=$(detect_platform)

# ======================================================================
# ADVANCED BANNER FUNCTION
# ======================================================================

show_banner() {
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
    echo "    ....'clc;.                          .'l:...."

    echo -e "${NC}"
    echo -e "${GREEN}  Platform: ${PLATFORM} | User: $(whoami)${NC}"
    echo -e "${YELLOW}    Channel: ${CHANNEL_NAME}${NC}"
    echo -e "${YELLOW}       Tool By: ${AUTHOR}${NC}"
}

# ======================================================================
# ADVANCED ANIMATION FUNCTIONS
# ======================================================================

hacking_animation() {
    echo -e "${CYAN}"
    echo "[*] INITIATING SECURE CONNECTION PROTOCOL..."
    echo -e "${NC}"
    
    for i in {1..3}; do
        echo -ne "${GREEN}⦿ ENCRYPTING DATA STREAM${NC} "
        for j in {1..5}; do
            echo -ne "${GREEN}•${NC}"
            sleep 0.1
        done
        echo
    done
    
    echo -e "${GREEN}✓ AES-256 ENCRYPTION: ACTIVE${NC}"
    echo -e "${GREEN}✓ TOR NETWORK: ROUTED${NC}"
    echo -e "${GREEN}✓ VPN TUNNEL: SECURED${NC}"
    echo -e "${GREEN}✓ CONNECTION: ANONYMIZED${NC}"
    echo
}

progress_bar() {
    local duration=${1:-2}
    local message="${2:-Processing}"
    
    echo -ne "${CYAN}[*] ${message} [${NC}"
    for i in {1..20}; do
        echo -ne "${GREEN}█${NC}"
        sleep $(echo "scale=2; $duration/20" | bc)
    done
    echo -e "${CYAN}] ✓${NC}"
}

# ======================================================================
# SYSTEM FUNCTIONS
# ======================================================================

check_dependencies() {
    local missing=()
    local deps=("curl")
    
    for dep in "${deps[@]}"; do
        if ! command -v "$dep" &>/dev/null; then
            missing+=("$dep")
        fi
    done
    
    if [ ${#missing[@]} -gt 0 ]; then
        echo -e "${YELLOW}[!] Missing dependencies: ${missing[*]}${NC}"
        echo -e "${CYAN}[*] Installing required packages...${NC}"
        
        case $PLATFORM in
            "termux") pkg install -y ${missing[@]} ;;
            "kali"|"debian"|"parrot") sudo apt update && sudo apt install -y ${missing[@]} ;;
            "macos") brew install ${missing[@]} ;;
        esac
    fi
}

check_internet() {
    echo -e "${YELLOW}[*] TESTING NETWORK CONNECTIVITY...${NC}"
    
    if ping -c 2 -W 3 8.8.8.8 &>/dev/null; then
        echo -e "${GREEN}[✓] INTERNET CONNECTION: ACTIVE${NC}"
        return 0
    else
        echo -e "${RED}[✗] NETWORK CONNECTION: OFFLINE${NC}"
        return 1
    fi
}

open_resource() {
    local url="$1"
    local name="$2"
    
    echo -e "${CYAN}[*] ACCESSING: ${name}${NC}"
    hacking_animation
    
    case $PLATFORM in
        "termux") termux-open-url "$url" ;;
        "kali"|"debian"|"parrot"|"linux") xdg-open "$url" & ;;
        "macos") open "$url" ;;
        *) echo -e "${YELLOW}[!] Manual access: ${url}${NC}" ;;
    esac
    
    echo -e "${GREEN}[✓] RESOURCE ACCESSED SUCCESSFULLY${NC}"
}

# ======================================================================
# MENU FUNCTIONS
# ======================================================================

show_about() {
    show_banner
    echo -e "${CYAN}"
    echo "                     ABOUT ME"
    echo "══════════════════════════════════════════════════"
    echo -e "${NC}"
    
    echo -e "${YELLOW}Hello! I'm Sunil, creator of Noob Cyber Tech.${NC}"
    echo
    echo -e "${GREEN}✓ Ethical hacking & bug bounty specialist"
    echo -e "${GREEN}✓ YouTube educator and content creator"
    echo -e "${GREEN}✓ Cybersecurity enthusiast${NC}"
    echo
    echo -e "${BLUE}📺 YouTube: ${GREEN}https://youtube.com/@noobcybertech2024${NC}"
    echo -e "${BLUE}🌐 Platform: ${GREEN}${PLATFORM}${NC}"
    echo -e "${BLUE}⚡ Version: ${GREEN}${VERSION}${NC}"
    echo "══════════════════════════════════════════════════"
}

show_social_menu() {
    while true; do
        show_banner
        echo -e "${CYAN}"
        echo "                 SOCIAL MEDIA"
        echo "══════════════════════════════════════════════════"
        echo -e "${NC}"
        
        echo -e "${GREEN}[1] ${CYAN}YouTube Channel${NC}"
        echo -e "${GREEN}[2] ${CYAN}Facebook${NC}"
        echo -e "${GREEN}[3] ${CYAN}Telegram${NC}"
        echo -e "${GREEN}[4] ${CYAN}Instagram${NC}"
        echo -e "${GREEN}[5] ${CYAN}WhatsApp Group${NC}"
        echo -e "${RED}[0] ${CYAN}Back to Main Menu${NC}"
        echo ""
        
        read -p "$(echo -e "${YELLOW}SELECT OPTION: ${NC}")" choice

        case $choice in
            1) open_resource "https://youtube.com/@noobcybertech2024" "YouTube Channel" ;;
            2) open_resource "https://www.facebook.com/share/1HrTAb9GoH/" "Facebook" ;;
            3) open_resource "https://t.me/Annon4you" "Telegram" ;;
            4) open_resource "https://www.instagram.com/annon_4you" "Instagram" ;;
            5) open_resource "https://chat.whatsapp.com/DQHA1MZ46RYGlyIIOPZR2T" "WhatsApp Group" ;;
            0) break ;;
            *) echo -e "${RED}[!] INVALID SELECTION${NC}"; sleep 1 ;;
        esac
        
        [[ $choice != 0 ]] && read -n 1 -s -p "$(echo -e "${YELLOW}PRESS ANY KEY TO CONTINUE...${NC}")"
    done
}

show_python_menu() {
    while true; do
        show_banner
        echo -e "${CYAN}"
        echo "              PYTHON FOR HACKERS"
        echo "══════════════════════════════════════════════════"
        echo -e "${NC}"
        
        echo -e "${GREEN}[1] ${CYAN}Penetration Testing${NC}"
        echo -e "${GREEN}[2] ${CYAN}Python Hacking Course${NC}"
        echo -e "${GREEN}[3] ${CYAN}Django Security${NC}"
        echo -e "${GREEN}[4] ${CYAN}Python Toolkit${NC}"
        echo -e "${RED}[0] ${CYAN}Back to Main Menu${NC}"
        echo ""
        
        read -p "$(echo -e "${YELLOW}SELECT MODULE: ${NC}")" choice

        case $choice in
            1) open_resource "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/8y5DUKCZ" "Penetration Testing" ;;
            2) open_resource "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/h2wnzQpY" "Python Hacking Course" ;;
            3) open_resource "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/5r4ziYSa" "Django Security" ;;
            4) open_resource "https://mega.nz/folder/NuQixb4C#JTM79y1ojYbuzqxSeAHURQ/folder/JrxhRYZb" "Python Toolkit" ;;
            0) break ;;
            *) echo -e "${RED}[!] INVALID SELECTION${NC}"; sleep 1 ;;
        esac
        
        [[ $choice != 0 ]] && read -n 1 -s -p "$(echo -e "${YELLOW}PRESS ANY KEY TO CONTINUE...${NC}")"
    done
}

show_techsagar_menu() {
    while true; do
        show_banner
        echo -e "${CYAN}"
        echo "         TECHNICAL SAGAR COURSES"
        echo "══════════════════════════════════════════════════"
        echo -e "${NC}"
        
        echo -e "${GREEN}[1] ${CYAN}Quick Hack Course${NC}"
        echo -e "${GREEN}[2] ${CYAN}Hackstars Course${NC}"
        echo -e "${GREEN}[3] ${CYAN}Tech Master Course${NC}"
        echo -e "${RED}[0] ${CYAN}Back to Main Menu${NC}"
        echo ""
        
        read -p "$(echo -e "${YELLOW}SELECT COURSE: ${NC}")" choice

        case $choice in
            1) open_resource "https://www.mediafire.com/file/mrcz8aa7ji05a2m/Quick_Hack_-_Beginners_Ethical_Hacking_Course_%2528White_Hat%2529.zip/file" "Quick Hack Course" ;;
            2) open_resource "https://mega.nz/folder/z7RVySYJ#VZsibaQRv58Xkn9jc-" "Hackstars Course" ;;
            3) open_resource "https://mega.nz/folder/XqR2BQ7A#_h4rAtZXCvyaCY7Xs" "Tech Master Course" ;;
            0) break ;;
            *) echo -e "${RED}[!] INVALID SELECTION${NC}"; sleep 1 ;;
        esac
        
        [[ $choice != 0 ]] && read -n 1 -s -p "$(echo -e "${YELLOW}PRESS ANY KEY TO CONTINUE...${NC}")"
    done
}

show_bittentech_menu() {
    while true; do
        show_banner
        echo -e "${CYAN}"
        echo "          BITTEN TECH COURSES"
        echo "══════════════════════════════════════════════════"
        echo -e "${NC}"
        
        echo -e "${GREEN}[1] ${CYAN}Ethical Hacking Bundle${NC}"
        echo -e "${GREEN}[2] ${CYAN}OSCP Certification Course${NC}"
        echo -e "${GREEN}[3] ${CYAN}Penetration Testing${NC}"
        echo -e "${GREEN}[4] ${CYAN}Cybersecurity Bundle${NC}"
        echo -e "${RED}[0] ${CYAN}Back to Main Menu${NC}"
        echo ""
        
        read -p "$(echo -e "${YELLOW}SELECT COURSE: ${NC}")" choice

        case $choice in
            1) open_resource "https://archive.org/download/tech-hacker-ethical-hacking-and-cyber-security-complete-bundle-bitten" "Ethical Hacking Bundle" ;;
            2) open_resource "https://drive.google.com/drive/folders/1FzOEe8m1IF7gX-vBEFVDPykqQgLohCI-" "OSCP Certification Course" ;;
            3) open_resource "https://archive.org/download/tech-hacker-ethical-hacking-and-cyber-security-complete-bundle-bitten" "Penetration Testing" ;;
            4) open_resource "https://archive.org/download/tech-hacker-ethical-hacking-and-cyber-security-complete-bundle-bitten" "Cybersecurity Bundle" ;;
            0) break ;;
            *) echo -e "${RED}[!] INVALID SELECTION${NC}"; sleep 1 ;;
        esac
        
        [[ $choice != 0 ]] && read -n 1 -s -p "$(echo -e "${YELLOW}PRESS ANY KEY TO CONTINUE...${NC}")"
    done
}

# ======================================================================
# MAIN MENU
# ======================================================================

main_menu() {
    while true; do
        show_banner
        echo -e "${CYAN}"
        echo "                  MAIN MENU"
        echo "══════════════════════════════════════════════════"
        echo -e "${NC}"
        
        echo -e "${GREEN}[1] ${CYAN}Hacking Master Class${NC}"
        echo -e "${GREEN}[2] ${CYAN}Bug Bounty Resources${NC}"
        echo -e "${GREEN}[3] ${CYAN}Technical Sagar Courses${NC}"
        echo -e "${GREEN}[4] ${CYAN}Ethical Hacking Tools${NC}"
        echo -e "${GREEN}[5] ${CYAN}Python for Hackers${NC}"
        echo -e "${GREEN}[6] ${CYAN}Bitten Tech Courses${NC}"
        echo -e "${GREEN}[7] ${CYAN}Social Media Links${NC}"
        echo -e "${GREEN}[8] ${CYAN}About Me${NC}"
        echo -e "${RED}[0] ${CYAN}Exit Tool${NC}"
        echo ""
        
        read -p "$(echo -e "${YELLOW}ENTER CHOICE: ${NC}")" choice

        case $choice in
            1) open_resource "https://drive.google.com/drive/folders/1mZwaNmPJB6OcGf-lSejIvbU8y2YxjDt4" "Hacking Master Class" ;;
            2) open_resource "https://mega.nz/folder/7yQwiRTY#mANk-z-SHu8tvFWiNJousQ" "Bug Bounty Resources" ;;
            3) show_techsagar_menu ;;
            4) open_resource "https://drive.google.com/drive/mobile/folders/10Ujx_YgIkA5lsiS5aU8E4dMXIzw0KlG2?usp=share_link" "Ethical Hacking Tools" ;;
            5) show_python_menu ;;
            6) show_bittentech_menu ;;
            7) show_social_menu ;;
            8) show_about ;;
            0) 
                echo -e "${GREEN}[+] Closing session...${NC}"
                progress_bar 1 "Cleaning up"
                echo -e "${YELLOW}[*] Stay secure! 🛡️${NC}"
                exit 0
                ;;
            *) 
                echo -e "${RED}[!] INVALID CHOICE${NC}"
                sleep 1
                ;;
        esac
        
        [[ $choice != 0 ]] && read -n 1 -s -p "$(echo -e "${YELLOW}PRESS ANY KEY TO CONTINUE...${NC}")"
    done
}

# ======================================================================
# INITIALIZATION
# ======================================================================

initialize() {
    echo -e "${BLUE}"
    echo "Initializing BlackHat Toolkit v${VERSION}"
    progress_bar 2 "Loading resources"
    
    check_dependencies
    check_internet
    
    echo -e "${GREEN}[✓] SYSTEM READY${NC}"
    sleep 1
}

# ======================================================================
# MAIN EXECUTION
# ======================================================================

# Clear screen and start
clear
initialize
main_menu
