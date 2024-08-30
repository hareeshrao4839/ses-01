# Pull base image
FROM alpine:latest

# Dockerfile Maintainer
MAINTAINER bob "abs.com"

# Install nginx and adjust nginx config to stay in foreground
RUN apk update && apk add --no-cache nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]