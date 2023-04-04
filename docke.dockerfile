# Use an official Node.js runtime as a parent image
From node:14-alpine
#Set the working directory to /app
WORKDIR /app
#Copy package.json and package-lock.json to the container
Copy package*.json ./

#Install dependencies
RUN npm install

#Copy the rest of the aplication code to the container
COPY ..
#Expose port 3000 for the application to listen on 
EXPOSE 3000
#Start the application
CMD ["npm", "start"]