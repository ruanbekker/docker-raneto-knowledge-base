FROM node:alpine

ENV RANETO_VERSION 0.16.2

RUN wget https://github.com/gilbitron/Raneto/archive/${RANETO_VERSION}.tar.gz \
 && tar -xvf ${RANETO_VERSION}.tar.gz \
 && mv Raneto-${RANETO_VERSION} /app
 
WORKDIR /app

RUN npm install && npm run gulp 
CMD ["npm", "start"]
