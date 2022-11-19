# Use a prebuilt node image
FROM node:16.13.2-alpine3.15

# Set the working directory to /app
WORKDIR /app

# Copy the package.json file that contains all the dependencies to the container

COPY ./express/ /app
COPY ./public/ /app/public

RUN npm install

# Start the server
CMD node server.js --bind 0.0.0.0:$PORT