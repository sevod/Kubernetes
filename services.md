#Nginx

vim etc/nginx/conf.d/default.conf

mkdir /run/nginx
vim /run/nginx/nginx.pid
nginx -g 'daemon on;'
