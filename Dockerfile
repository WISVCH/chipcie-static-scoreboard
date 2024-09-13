FROM nginx:1.27.1-alpine

RUN mkdir -p /var/nginx/cache

WORKDIR /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/templates/nginx.conf.template

RUN rm /etc/nginx/conf.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]