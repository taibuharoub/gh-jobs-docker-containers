FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gh-containers
ENV MONGODB_CLUSTER_ADDRESS cluster0.1smym.mongodb.net
ENV MONGODB_USERNAME ty-d
ENV MONGODB_PASSWORD 4xgQ9pCL0WbZE3Lp

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]