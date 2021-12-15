# specify the node base image with your desired version node:<version>
FROM node:10

RUN mkdir /app
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /app/

RUN npm install && npm install --only=dev
# If you are building your code for production
# RUN npm ci --only=production

# replace this with your application's default port
EXPOSE 80

ENV TZ=Asia/Ho_Chi_Minh