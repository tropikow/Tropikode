FROM node:18

WORKDIR /app

COPY app/package*.json ./

## Install app dependencies
RUN npm install && npm run build && npm run generate

COPY app .

EXPOSE 3000

CMD ["npm", "run", "start"]