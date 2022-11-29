# Copy over the app folder and have it running on node

# FROM nginx
# LABEL MAINTAINER=subhaan
# COPY app /home/
# EXPOSE 80
# EXPOSE 3000
# RUN apt-get update
# RUN apt-get install -y
# RUN apt-get install software-properties-common -y
# RUN apt-get install npm -y
# CMD ["nginx", "-g", "daemon off;"]
# WORKDIR /home/app
# RUN npm install
# CMD ["npm", "start"]

FROM node as app
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g npm@7.20.6
COPY . .
EXPOSE 3000
CMD ["node", "app.js"]

# Production ready image
FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install -g npm@7.20.6
COPY --from=app /usr/src/app /usr/src/app
CMD [ "node", "seeds/seed.js"]
# ENTRYPOINT [ "seed-database.sh" ]
EXPOSE 3000
CMD ["node", "app.js"]