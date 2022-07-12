#create a coloured welcome message
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export COLOR_NC='\e[0m' # No Color
export COLOR_BLACK='\e[0;30m'
export COLOR_GRAY='\e[1;30m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_LIGHT_GRAY='\e[0;37m'
export COLOR_WHITE='\e[1;37m'
#create a coloured welcome message
echo -e "${COLOR_LIGHT_CYAN}

█▄░█ █ █▀▀ █░█ ▀█▀   █▀▀ █▀▀ ▀█▀ █▀▀ █░█
█░▀█ █ █▄█ █▀█ ░█░   █▀░ ██▄ ░█░ █▄▄ █▀█    Made by NightOwl#6969 ${COLOR_NC}"

sleep 1
                                            
#wait 2 seconds
sleep 2
#create a coloured welcome message
echo -e "${COLOR_GREEN}

█░░ █▀█ ▄▀█ █▀▄ █ █▄░█ █▀▀        
█▄▄ █▄█ █▀█ █▄▀ █ █░▀█ █▄█   ▄   ▄   ▄
${COLOR_NC}"
#check if git is installed
if [ -x "$(command -v git)" ]; then
    echo -e "${COLOR_RED}[INFO] Git is installed${COLOR_NC}"
else
    echo -e "${COLOR_RED}[INFO] Git is not installed${COLOR_NC}"
    echo -e "${COLOR_RED}[WORKER] Installing Git${COLOR_NC}"
    sudo apt-get install git -y
fi
#check if curl is installed
if [ -x "$(command -v curl)" ]; then
    echo -e "${COLOR_RED}[INFO] curl is installed${COLOR_NC}"
else
    echo -e "${COLOR_RED}[INFO] curl is not installed${COLOR_NC}"
    echo -e "${COLOR_RED}[WORKER] Installing curl${COLOR_NC}"
    sudo apt-get install curl -y
fi
#ask the user for the github username
echo -e "${COLOR_CYAN}Enter your github username:${COLOR_NC}"
read github_username
#ask the user for repository name
echo -e "${COLOR_CYAN}Enter the name of the repository:${COLOR_NC}"
read repository_name
#check if the repository exists
if [ -d "$HOME/Desktop/$repository_name" ]; then
    echo -e "${COLOR_LIGHT_RED}[WARN] $repository_name already exists${COLOR_NC}"
else
    echo -e "${COLOR_GREEN}Cloning $repository_name${COLOR_NC}"
    #clone the repository with no output
    git clone https://github.com/$github_username/$repository_name.git > /dev/null 2>&1

fi
read -p "Press [Enter] to leave..."
