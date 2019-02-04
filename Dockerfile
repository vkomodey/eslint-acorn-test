FROM node:8

RUN npm install -g npm@5.8.0

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
COPY .npmrc /usr/src/app/
RUN npm install

ENTRYPOINT ["sleep", "10"]
