server {
    listen 80;
    listen [::]:80;

    root /var/www/lucasmeridth.com/html;
    index index.html index.htm;

    server_name lucasmeridth.com www.lucasmeridth.com;

    location / {
        try_files $uri $uri/ =404;
    }
}
