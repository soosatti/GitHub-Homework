#create from the latest nginx image
FROM nginx:latest
#copy the nginx config file
COPY ../nginx.conf /etc/nginx/nginx.conf
#copy static web page into the default nginx path
COPY ../index.html /usr/share/nginx/html
#start the nginx server
CMD ["nginx", "-g", "daemon off;"]