#create from the latest nginx image
FROM nginx:latest
#copy static web page into the default nginx path
COPY index.html /usr/share/nginx/html
#start the nginx server
CMD ["nginx", "-g", "daemon off;"]