# FROM Ubuntu:latest

# First I say to container to pull node image 
FROM node:latest

# Here I am copying index.js file and Package.json file to our docker image 
# COPY index.js /home/app/index.js
# COPY package.json /home/app/package.json

# When you are working on real world you have so many files so you can copy all the files by using this command 
COPY . /home/app

# Here I will go to home/app
WORKDIR /home/app/

RUN npm install
EXPOSE 9000

CMD ["node" , "index"]