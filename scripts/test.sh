#! /bin/bash

npm install -g @angular/cli@8.0.3
npm install --save-dev @angular/cli@8.0.3
rm ./front-end/package-lock.json
npm install

# test the front-end using angular unit testing
cd front-end
ng test --watch=false --browsers=ChromeHeadless