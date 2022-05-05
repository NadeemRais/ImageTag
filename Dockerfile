FROM node

WORKDIR /frontend

COPY package*.json ./

RUN npm install

COPY patch /

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]
