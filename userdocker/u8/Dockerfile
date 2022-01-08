FROM node:9
USER node
RUN pwd; 
RUN mkdir -p /home/node/app
COPY package.json /home/node/app
WORKDIR /home/node/app
RUN npm install --loglevel=warn;