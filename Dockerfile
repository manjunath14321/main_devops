# Use the official Node.js LTS image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port (default for Node apps, change if needed)
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
