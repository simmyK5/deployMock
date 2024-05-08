FROM node:22 AS builder

WORKDIR /app

COPY package.json ./

RUN npm install
COPY . .

RUN npm run build --prod
FROM nginx:alpine
COPY --from=builder /app/dist/HELLLOWORLD /usr/share/nginx
EXPOSE 8
CMD [ "nginx", "--g","daemon off:" ]