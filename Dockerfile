use the latest LTS version of node.js
FROM node:18-alpine

#set the working directory inside the container
WORKDIR /app

#Copy package.json and package-lock.json 
COPY package*.json ./

#install dependencies
RUN npm install

#copy the rest of your application files
COPY . .

#Expose the port where your app runs
EXPOSE 3000

#Define the command to run your app
CMD ["npm","start"]