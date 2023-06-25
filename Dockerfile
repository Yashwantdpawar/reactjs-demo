# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Build the React app
RUN npm run build

# Set the command to run when the container starts
CMD ["npm", "start"]

# Expose port 3000
EXPOSE 3000
