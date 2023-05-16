FROM node:latest
WORKDIR /usr/app
RUN npm install -g hexo
COPY package*.json ./
RUN npm install
COPY source/ source/
COPY scaffolds/ scaffolds/
COPY themes/ themes/
COPY _config.yml _config.landscape.yml ./
RUN hexo generate
EXPOSE 4000
CMD ["hexo", "server", "-s", "-i", "0.0.0.0", "-p", "4000"]
