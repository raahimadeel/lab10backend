FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the project
COPY . .

# Expose your app port
EXPOSE 5000

# Run the app
CMD ["node", "server.js"]
