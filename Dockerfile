# todo use slim alpine image
ARG NODE_VERSION=22.5.1
FROM node:${NODE_VERSION}-alpine


ENV NODE_ENV=production

EXPOSE 3000

WORKDIR /app
COPY . .
RUN npm install


USER node
CMD ["node", "./app.js"]
