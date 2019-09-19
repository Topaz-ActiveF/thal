FROM node:10

RUN  apt-get update \
&&apt-get install -y libxss1 libappindicator1 libindicator7 \
&&wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
&&apt install -y ./google-chrome*.deb

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

CMD [ "node", "index.js" ]
