FROM node:17-slim
RUN npm install -g firebase-tools
COPY entrypoint.sh /usr/local/bin
ENTRYPOINT ["entrypoint.sh"]
