# Choose the Node.js 20 image as the base image
FROM node:20.8.0

# Set the working directory in the Docker container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies in the Docker container
RUN npm install

# Copy the rest of the application to the working directory
COPY . .

# Build the application
RUN npm run build

# Expose port 80
EXPOSE 8080

# Start the application
CMD [ "npm", "start"]