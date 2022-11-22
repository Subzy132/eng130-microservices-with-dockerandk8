# Copy over the app folder and have it running on node

FROM nginx
LABEL MAINTAINER=subhaan
COPY app /home/
EXPOSE 80
EXPOSE 3000
RUN apt-get update
RUN apt-get install -y
RUN apt-get install software-properties-common -y
RUN apt-get install npm -y
CMD ["nginx", "-g", "daemon off;"]
WORKDIR /home/app
RUN npm install
CMD ["npm", "start"]
