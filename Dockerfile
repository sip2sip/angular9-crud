# Image of Angular 9 CRUD-application
FROM node:13
# Create app directory
RUN mkdir /app
WORKDIR /app

RUN git clone https://github.com/sip2sip/angular9-crud.git


ENV PATH /app/angular9-crud/node_modiles/.bin:$PATH
WORKDIR /app/angular9-crud
RUN npm install -g rxjs@^6.5.3 tslib@^1.10.0 zone.js@~0.10.2 
RUN npm install -g @angular/cli --defaults=true
RUN npm install -g @angular/core -defaults=true
#RUN cd /app/angular9-crud
RUN pwd
#RUN npm install 
#RUN ng add @angular/material
RUN npm install rxjs@^6.5.3 tslib@^1.10.0 zone.js@~0.10.2


#RUN npm install

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)



CMD ng serve --host 0.0.0.0


