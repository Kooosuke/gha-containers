FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME testing
ENV MONGODB_CLUSTER_ADDRESS cluster0.2qrph.mongodb.net
ENV MONGODB_USERNAME kousukemuramatsu
ENV MONGODB_PASSWORD kNrUeIYidYrdxqNs

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
