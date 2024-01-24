FROM node

WORKDIR /myapp

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

CMD [ "npm", "start" ]
