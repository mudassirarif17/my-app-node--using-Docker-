# FROM Ubuntu:latest

# First I say to container to pull node image 
FROM node:latest

# Here I am copying index.js file and Package.json file to our docker image 
COPY index.js /home/app/index.js
COPY package.json /home/app/package.json

# Here I will go to home/app
WORKDIR /home/app/

RUN npm install
EXPOSE 9000

CMD ["node" , "index"]