FROM node:12-alpine3.10

WORKDIR /

COPY package*.json ./

RUN npm install

COPY . .

ENV HOST 0.0.0.0   # Insensitive environment variable

EXPOSE 3000

CMD ["npm", "run", "prod"]

