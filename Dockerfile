# Define a build ARG for the platform
ARG BUILDPLATFORM=linux/amd64

# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose a port (e.g., 3000) for the React app
EXPOSE 3000

# Start the React app when the container starts
CMD ["npm", "start"]
