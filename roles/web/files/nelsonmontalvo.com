upstream app {
    server unix:/var/www/nelsonmontalvo.com/html/tmp/sockets/unicorn.sock fail_timeout=0;
}

server {
    listen 80;
    listen [::]:80;

    server_name nelsonmontalvo.com www.nelsonmontalvo.com;

    root /var/www/nelsonmontalvo.com/html/public;

    location / {
        try_files $uri @app;
    }

    location @app {
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Host $http_host;
        proxy_redirect off;
        proxy_pass http://app;
    }

    error_page 500 502 503 504 /500.html;
    client_max_body_size 4G;
    keepalive_timeout 10;
}
