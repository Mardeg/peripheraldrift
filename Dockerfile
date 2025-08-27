FROM nginx:alpine

# Copy the static files to nginx html directory
COPY . /usr/share/nginx/html/

# Remove the default nginx configuration that adds X-Frame-Options
RUN sed -i '/add_header X-Frame-Options SAMEORIGIN;/d' /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]