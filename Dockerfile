FROM node:12
WORKDIR /usr/local/app
COPY index.js /usr/local/app
RUN npm install
COPY package.json /usr/local/app
EXPOSE 8000
CMD [ "npm", "start" ]
ENTRYPOINT ["node", "/usr/local/app/index.js"]


