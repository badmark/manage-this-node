FROM node:14.12
#EXPOSE 3000
##RUN git clone https://github.com/badmark/manage-this-node.git /opt/manage-this
#COPY . /opt/manage-this
#WORKDIR /opt/manage-this
#RUN npm install
#VOLUME /config
#RUN ln -sf /config/config.json /opt/manage-this/config.json
#EXPOSE 3000
#RUN ls /opt/manage-this
#CMD ["node", "/opt/manage-this/bin/www"]



RUN git clone https://github.com/badmark/manage-this-node.git /opt/manage-this

WORKDIR /opt/manage-this

RUN npm install

VOLUME /config

RUN ln -sf /config/config.json /opt/manage-this/config.json

EXPOSE 3000

CMD ["npm", "start"]
