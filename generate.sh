#!/bin/bash

# Define ANSI color codes for formatting
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Simulate typing effect
type_delay=0.1
delay=2

fake_typing() {
    for ((i=0; i<${#1}; i++)); do
        echo -n "${1:$i:1}"
        sleep $type_delay
    done
}

clear

# Function to simulate a command
simulate_command() {
    echo -ne "${GREEN}enigma@adhikara:~$ ${NC}"
    fake_typing "$1"
    echo -e "\n$2"
    echo ""
}

# Welcome message
simulate_command "echo Welcome to Achmad Adhikara's terminal" "${BLUE}Welcome to Achmad Adhikara's personal terminal. Let's explore his journey in Information Security.${NC}"
sleep $delay
# Display educational background
simulate_command "cat education.txt" "${YELLOW}Education:${NC} International student from Indonesia studying Information Security in Moscow. A challenging yet rewarding journey."
sleep $delay
# Work experience
simulate_command "cat work_experience.txt" "${YELLOW}Work Experience:${NC} Online Python Tutor for an edtech startup, gaining skills in remote work and flexibility."
sleep $delay
# CVEs discovered
simulate_command "cat cves_discovered.txt" "${YELLOW}CVEs Discovered:${NC} Proud contributor to cybersecurity with multiple CVEs reported: CVE-2023-38829,  CVE-2023-42336,  CVE-2023-44860,  CVE-2023-45465,  CVE-2023-43892,  CVE-2023-45467,  CVE-2023-45466,  CVE-2023-43893,  CVE-2023-45463,  CVE-2023-45468,  CVE-2023-45464,  CVE-2023-43891,  CVE-2023-43890"
sleep $delay
# Philosophy on staying current
simulate_command "cat staying_current.txt" "${BLUE}Staying Current:${NC} Continuously educates through courses and professional development, actively participates in online communities."
sleep $delay
# Networking and contact
simulate_command "cat networking.txt" "${GREEN}Networking:${NC} Actively connected with professionals via online forums. For more details or networking opportunities, visit https://adhikara.biz.id or https://www.linkedin.com/in/adhikara/"
sleep $delay
# End simulation with a motivational message
simulate_command "echo Stay Secure" "${RED}As an aspiring Information Security professional, your journey is just beginning. Stay curious, stay secure, and keep pushing the boundaries of what's possible!${NC}"
sleep $delay
