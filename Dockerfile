FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install --force

COPY . .

EXPOSE 80

RUN npm run build

CMD ["npm", "run", "start"]