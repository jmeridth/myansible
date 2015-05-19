server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    root /var/www/jasonmeridth.com/html;
    index index.html index.htm;

    server_name jasonmeridth.com www.jasonmeridth.com;

    location / {
        try_files $uri $uri/ =404;
    }
}
