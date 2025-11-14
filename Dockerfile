FROM node:20-alpine

EXPOSE 8085

COPY . /app
WORKDIR /app
RUN npm install
CMD ["npm", "start"]

ROM node:20-alpine 
WORKDIR /app 
COPY package*.json ./ 
RUN npm ci --only=production 
COPY . . 
CMD ["node", "app.js"] 