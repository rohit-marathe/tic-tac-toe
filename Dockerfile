
WORKDIR /myapp

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

RUN npm run build 

FROM nginx 

EXPOSE 80

COPY --from=stage-1 /myapp/build /usr/share/nginx/html