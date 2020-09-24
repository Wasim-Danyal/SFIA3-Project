FROM node
WORKDIR /app
COPY . /app
RUN npm install
RUN npm install -g @angular/cli
EXPOSE 4200
ENTRYPOINT ng serve --host 0.0.0.0 --port 4200 --disableHostCheck true
