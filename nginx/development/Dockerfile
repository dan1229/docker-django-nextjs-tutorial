#
# NGINX - DEVELOPMENT
#
FROM nginx:alpine


RUN mkdir -p /etc/nginx/conf.d/
RUN rm /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/conf.d/


EXPOSE 80
EXPOSE 443


CMD [ "nginx", "-g", "daemon off;" ]