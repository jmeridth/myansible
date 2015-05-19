server {
    listen 80;
    listen [::]:80;

    root /var/www/meridth.io/html;
    index index.html index.htm;

    server_name meridth.io www.meridth.io;

    location / {
        try_files $uri $uri/ =404;
    }
}
