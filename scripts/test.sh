#! /bin/bash

# install npm
sudo apt install npm -y
sudo npm uninstall -g angular-cli @angular/cli
sudo npm cache clean --force
sudo npm install -g @angular/cli@8.0.3
sudo npm install --save-dev @angular/cli@8.0.3
sudo rm ./front-end/package-lock.json
sudo npm install

# test the front-end using angular unit testing
cd front-end
ng test --watch=false --browsers=ChromeHeadless