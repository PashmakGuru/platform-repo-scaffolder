# syntax=docker/dockerfile:1

# Build Stage
FROM node:20.10.0-alpine3.18 as builder

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Production Stage
FROM nginxinc/nginx-unprivileged:1.24.0

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
