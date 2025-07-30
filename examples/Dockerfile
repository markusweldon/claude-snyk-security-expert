# Example Dockerfile with potential security issues for demonstration
FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Run as root (security issue for demonstration)
USER root

# Start the application
CMD ["npm", "start"]