FROM ubuntu

# Build and install nginx
RUN DEBIAN_FRONTEND=noninteractive apt-get -q -y install gcc make libpcre3-dev zlib1g-dev
ADD nginx-1.5.6.tar.gz /tmp/nginx-1.5.6.tar.gz
ADD build.sh /tmp/build.sh
RUN bash /tmp/build.sh

# Add necessary data
ADD logs /var/log/nginx
ADD conf /etc/nginx
ADD docroot /docroot

EXPOSE 80
CMD [ "nginx", "-c", "/etc/nginx/nginx.conf" ]
