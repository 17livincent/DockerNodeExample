FROM node:15.7.0
WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json
RUN npm install
COPY . .
CMD ["node", "server.js"]

# run with: docker run -dp 3000:3000 --name node-example 17livincent/node-example
# stop with: docker stop node-example