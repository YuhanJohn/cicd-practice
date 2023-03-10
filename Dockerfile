# Base image
FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000
EXPOSE 8080

# Start the app
CMD [ "npm", "run", "server" ]