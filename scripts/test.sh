#! /bin/bash

# test the front-end using angular unit testing
cd front-end
rm ./front-end/package-lock.json
sudo npm install -g @angular/cli
sudo npm install
wget https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
rm chromedriver_linux64.zip
export CHROME_BIN=/usr/bin/chromium-browser
ng test --watch=false --browsers=ChromeHeadless
cd ..