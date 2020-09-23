#! /bin/bash
rm ./front-end/package-lock.json
npm install

# test the front-end using angular unit testing
cd front-end
ng test --watch=false --browsers=ChromeHeadless
cd ..