FROM nginx:1.17.10-alpine
RUN rm -rf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf
EXPOSE 80
