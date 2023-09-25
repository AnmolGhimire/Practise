FROM node
WORKDIR /var/node
COPY . /var/node
RUN npm install
CMD ["node","app.js"]
EXPOSE 3005
