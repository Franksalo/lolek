FROM nginx
RUN sed -i -e 's/us.archive.ubuntu.com/archive.ubuntu.com/g' /etc/apt/sources.list && apt-get update && apt-get install -y curl
COPY index.html /usr/share/nginx/html
COPY write_ip.sh /write_ip.sh
RUN chmod ugo+x /write_ip.sh
CMD ["/write_ip.sh"]
