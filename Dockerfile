# Dockerfile

# Start with a base recipe (Node.js 18)
FROM node:18-alpine

# Set the working area
WORKDIR /usr/src/app

# Copy the ingredient list and install them
COPY package*.json ./
RUN npm install

# Copy the whole recipe (server.js)
COPY . .

# Say which door (port) to use
EXPOSE 3000

# The command to start the app
CMD [ "node", "server.js" ]