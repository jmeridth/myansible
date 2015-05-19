server {
    listen 80;
    listen [::]:80;

    root /var/www/bishopmeridth.com/html;
    index index.html index.htm;

    server_name bishopmeridth.com www.bishopmeridth.com;

    location / {
        try_files $uri $uri/ =404;
    }
}
