#! /bin/bash

# test the front-end using angular unit testing
cd front-end
rm ./front-end/package-lock.json
ng test --watch=false --browsers=ChromeHeadless
cd ..