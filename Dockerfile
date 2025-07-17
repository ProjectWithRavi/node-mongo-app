# Base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the project
COPY . .

# Expose the port
EXPOSE 5000

# Start the app
CMD ["node", "app.js"]
