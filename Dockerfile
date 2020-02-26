# Image of Angular 9 CRUD-application
FROM node:13
# Create app directory
RUN mkdir /app
WORKDIR /app
CMD cd /app
CMD ng 
COPY package*.json ./
ENV PATH /usr/src/angular9-crud/node_modiles/.bin:$PATH

RUN npm install rxjs@^6.5.3 tslib@^1.10.0 zone.js@~0.10.2
RUN npm install 
RUN npm install -g @angular/cli --defaults=true
RUN npm install -g @angular/core -defaults=true
ng new angular9-crud --routing=true --skipGIT=true --skipTests=true 
RUN ng add @angular/material
#RUN npm install

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY src ./

CMD ng serve --host 0.0.0.0


