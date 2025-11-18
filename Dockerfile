FROM node:20-alpine AS builder

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

FROM node:20-alpine AS final

WORKDIR /app
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/ .

EXPOSE 8085

CMD ["node", "app.js"]