FROM mongo

LABEL MAINTAINER=subhaan

WORKDIR /usr/src/db/

COPY ./mongod.conf /etc/

EXPOSE 27017

CMD ["mongod"]