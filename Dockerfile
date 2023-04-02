FROM node:18-alpine

WORKDIR /app

COPY ./package.json .

RUN mpm install

COPY . .

RUN npm run build

EXPOSE 80

CMD ["npm", "run", "start:prod"]