FROM nginx:alpine

# ✅ Copy static files
COPY ./site /usr/share/nginx/html

# ✅ Overwrite Nginx default config to listen on $PORT
RUN sed -i 's/listen       80;/listen       8080;/' /etc/nginx/conf.d/default.conf

# ✅ Expose the Cloud Run port
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
