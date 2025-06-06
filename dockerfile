FROM node:20

WORKDIR /app

COPY . .

RUN npm install
RUN npm run build

WORKDIR /app/api

RUN npm install

EXPOSE 5000

CMD ["node", "server.cjs"]