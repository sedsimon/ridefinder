FROM node:8

# create app directory
WORKDIR /usr/src/ridefinder

# install app dependencies
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "npm", "run", "dev" ]
