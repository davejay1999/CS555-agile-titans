FROM node:19

RUN mkdir /src

ADD . /src

WORKDIR /src/public/frontend/cs555-agile-titans

RUN echo REACT_APP_SERVER=https://titans.vishw.site/ > .env

RUN npm install

RUN npm run build

WORKDIR /src/public/frontend/cs555-agile-titans/build

RUN cp -R * ../../../

WORKDIR /src

RUN npm install

CMD npm start
