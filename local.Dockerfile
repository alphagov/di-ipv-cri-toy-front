FROM node:18.12.1-alpine

ENV PORT 5050

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . ./

RUN npm run build

CMD npm run dev

EXPOSE $PORT
