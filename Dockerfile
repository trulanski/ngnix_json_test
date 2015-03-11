# Dockerfile

# Pull base image.
FROM dockerfile/ubuntu

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  mkdir -p /var/www/cache/tmp && \
  chmod -R 777 /var/www/cache/ && \
  chown -R www-data:www-data /var/www/cache/ 
 

# Add files.
COPY nginx_files/sites-enabled/default /etc/nginx/sites-enabled/default
COPY nginx_files/nginx.conf /etc/nginx/nginx.conf
COPY nginx_files/htpasswd /etc/nginx/htpasswd

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
