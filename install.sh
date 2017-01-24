#!/bin/sh

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

printf "\n${BRIGHT}${WHITE}--------------------------------------------------------------\n"
printf "${GREEN}Setting up the Arrakis' project${NORMAL}\n"

APP_DIR="arrakis/app"
API_DIR="arrakis/api"
for DIR_NAME in ${APP_DIR} ${API_DIR}
do
  if [ -f $DIR_NAME ] || [ -d $DIR_NAME ]; then
    printf "\n${BRIGHT}${RED}ERROR!!${NORMAL}\n"
    printf "There's already a file or directory named ${BRIGHT}${YELLOW}%s/%s${NORMAL}!\nAborting.\n" "$(pwd)" "$DIR_NAME" 1>&2
    printf "\nPlease, try again at an empty directory.\n"
    exit 1
  fi
done

printf "\nCloning the project's sub-repositories\n"

# APIs repositories

printf "\n1) a fake API Gateway at Service Discovery repository\n"
git clone https://github.com/lucasmauricio/service-discovery.git $API_DIR/registrator/

printf "\n2) Collection Service at Wallach IX repository\n"
git clone https://github.com/lucasmauricio/wallach-ix.git $API_DIR/collection/

printf "\n3) Item Service at IX repository\n"
git clone https://github.com/lucasmauricio/ix.git $API_DIR/item/

printf "\n4) User Service at Balut repository\n"
git clone https://github.com/lucasmauricio/balut.git $API_DIR/user/

# APPs repositories

printf "\n5) Frontend Test App for services at Kaitain repository\n"
git clone https://github.com/lucasmauricio/kaitain.git $APP_DIR/qa/


printf "\n${WHITE}The project's setup is complete and now you can use Docker to try it out.\n"
printf "\n${CYAN}Please, feel free to talk to us at Github (https://github.com/lucasmauricio/arrakis/issues) ${NORMAL}\n"
