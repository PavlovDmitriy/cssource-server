FROM nginx:latest
RUN apt-get update && apt-get install -y nginx-extras libnginx-mod-http-dav-ext

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/.credentials.list /etc/nginx/.credentials.list

EXPOSE 80
