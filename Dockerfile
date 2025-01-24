# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your static website files (e.g., HTML, CSS, JS) to the Nginx HTML directory
COPY . .

# Expose port 80 (the default port for HTTP traffic)
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
