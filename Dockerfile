FROM node:22.15.0-alpine3.20
USER node
RUN mkdir /home/node/app
WORKDIR /home/node/app
COPY --chown=node:node package*.json ./
RUN npm ci
COPY --chown=node:node . .
CMD ["node", "app.js"]
