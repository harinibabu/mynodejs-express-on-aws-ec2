#!/bin/bash

sudo chmod -R 777 /home/ec2-user/express-app

#navigate into out our working idrectory where we have all our github profile
cd /home/ec2-user/express-app

#add npm and node to push
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # lodas nvm bash_completion (node is in )

#install node modules
npm install

#start our node app in the background
node app.js > app.out.log 2> app.err.log < /dev/null &