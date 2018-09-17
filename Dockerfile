FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "run", "build"]

FROM nginx
WORKDIR /app
COPY 
