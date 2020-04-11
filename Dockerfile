FROM node:carbon
WORKDIR /src/app
COPY . .
RUN npm install --only=production
ENTRYPOINT [ "npm" , "start" ]

