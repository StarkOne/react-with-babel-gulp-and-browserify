#!/bin/bash

# This scipt will remove current react, react-dom and etc versions
# And will install tha last one - so you will be able to check if functionality is still valid
# At the end it will run `gulp build`

YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

printf "${YELLOW}Replacing react and it's components with the last ones from npm${NC} \n"
echo "I will only remove libraries from 'node_modules' folder."
echo "They will stay in 'package.json'"

printf "${BLUE}Removing 'react'${NC} \n"
npm uninstall react

printf "${BLUE}Removing 'react-dom'${NC} \n"
npm uninstall react-dom

printf "${BLUE}Removing 'react-router'${NC} \n"
npm uninstall react-router

printf "${BLUE}Removing 'history'${NC} \n"
npm uninstall history

printf "${BLUE}Installing last version of 'react', 'react-dom', 'react-router', 'history'${NC} \n"
npm install react react-dom react-router history

printf "${BLUE}Building project${NC} \n"
npm run build

printf "${YELLOW}All done, you can open project in your browser${NC} \n"

echo "In order to revert the process just use this command"
echo "$ npm uninstall react react-dom react-router history && npm install && npm run build"
