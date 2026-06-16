# Step 1: Use a lightweight, stable Nginx image based on Alpine Linux
FROM nginx:1.25-alpine

# Step 2: Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Step 3: Copy your specific file and rename it to index.html inside Nginx
COPY visualdemoapp.html /usr/share/nginx/html/index.html

# Step 4: Expose port 80 to allow traffic to the container
EXPOSE 80

# Step 5: Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]