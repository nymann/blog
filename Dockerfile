FROM node:latest AS builder

WORKDIR /usr/app
RUN npm install -g hexo
COPY package*.json ./
RUN npm install
COPY source/ source/
COPY scaffolds/ scaffolds/
COPY themes/ themes/
COPY _config.yml _config.landscape.yml ./
RUN hexo generate

FROM arm64v8/nginx:bullseye

# Remove default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy static files from builder stage
COPY --from=builder /usr/app/public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
