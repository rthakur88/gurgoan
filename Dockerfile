# Pull base image
FROM debian:latest

# Dockerfile Maintainer
MAINTAINER Jan Wagner "waja@cyconet.org"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx; \
 echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 80

# Start nginx
CMD ["/usr/sbin/nginx"]

#FROM node:16
# Create app directory
#WORKDIR /usr/src/app
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./
#RUN npm install
# If you are building your code for production
# RUN npm install --only=production
# Bundle app source
#COPY . .
#EXPOSE 80
#ENTRYPOINT ["echo"]
#CMD [ "npm", "start" ]
# This is dummy change for git demo

#######  New code ###################
#FROM node:18-alpine
#ENV NODE_ENV=production
#WORKDIR /app
#COPY ["package.json", "package-lock.json*", "./"]
#RUN npm install --production
#COPY . .
#ENTRYPOINT [ "node", "server.js" ]
