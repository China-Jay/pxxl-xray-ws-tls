FROM node:24-alpine
RUN apk add --no-cache unzip && npm install -g npm@latest
WORKDIR /app
COPY package.json server.js setup.js ./
RUN node setup.js
ENV PORT=8080
EXPOSE 8080
CMD ["node", "server.js"]






