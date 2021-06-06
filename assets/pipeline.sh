#1/usr/bin/env bash

if [ $(python3 NameIDTest.py) = 0 ]; then
        echo 'Name ID failed!'
        exit 2               
fi
echo 'NameIDtest passed!'
npm install
npm run build
cd src/__tests__
npm run test 
cd ../../../
git add .
git commit -m $1
git push origin master
git status
