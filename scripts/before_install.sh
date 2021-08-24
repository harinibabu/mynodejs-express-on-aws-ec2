#!/bin/bash

#download node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
node -e "console.log('Running Node.js ' + process.version)"

#create out working directory if it dosen't exist
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
    echo "${DIR} exists"
else
    echo "creating ${DIR} directory"
    mkdir ${DIR}
fi