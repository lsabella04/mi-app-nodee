FROM node:20-alpine

EXPOSE 8085

COPY . /app
WORKDIR /app
RUN npm install
CMD ["npm", "start"]

