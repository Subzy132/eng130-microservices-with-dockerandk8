# docker run nginx - base image
FROM nginx

# Who is creating this

LABEL MAINTAINER=subhaan

# created index.html profile - copy tp container

# default location /usr/share/nginx/html/

COPY index.html /usr/share/nginx/html/
COPY subhaan.png /usr/share/nginx/html/

# docker run -d -p 80:80 name

# port number 

EXPOSE 80

# launch server

CMD ["nginx", "-g", "daemon off;"]

