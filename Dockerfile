# Dockerfile

# Pull base image.
FROM dockerfile/ubuntu

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \

# Add files.
ADD /tmp/nginx_files/sites-enabled/default /etc/nginx/sites-enabled/default
ADD /tmp/nginx_files/nginx.conf /etc/nginx/nginx.conf
ADD /tmp/nginx_files/htpasswd /etc/nginx/htpasswd

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
