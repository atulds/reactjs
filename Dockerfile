FROM node AS build
WORKDIR /app
COPY package.json .
COPY . .
RUN npm i
RUN npm run build

FROM nginx:1.21.4-alpine
COPY --from=build /app/build usr/share/nginx/html
