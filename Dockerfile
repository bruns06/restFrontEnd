# Base image
FROM node:14 AS build-env

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project
COPY . .

# Build the project
RUN npm run 


# Production image
FROM nginx:latest

# Copy the build artifacts to the NGINX public folder
COPY --from=build-env /app/public /usr/share/nginx/html

# Expose the port
EXPOSE 5173

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]


