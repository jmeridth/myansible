server {
    listen 80;
    listen [::]:80;

    root /var/www/nelsonmontalvo.com/html;
    index index.html index.htm;

    server_name nelsonmontalvo.com www.nelsonmontalvo.com;

    location / {
        try_files $uri $uri/ =404;
    }
}
