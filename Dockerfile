# Use Node.js official image as base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application to the container
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
