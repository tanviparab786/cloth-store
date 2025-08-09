# Use the official Nginx image
FROM nginx:alpine

# Remove default Nginx website content
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file into the container's Nginx directory
COPY index.html /usr/share/nginx/html/
COPY dress-detail.html /usr/share/nginx/html/
COPY prod-detail.html /usr/share/nginx/html/


# Expose port 80 to access it via browser
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]