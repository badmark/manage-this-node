FROM node:6.0

RUN git clone https://github.com/badmark/manage-this-node.git /opt/manage-this

WORKDIR /opt/manage-this

RUN npm install

VOLUME /config

RUN ln -sf /config/config.json /opt/manage-this/config.json

EXPOSE 3000

CMD ["npm", "start"]
