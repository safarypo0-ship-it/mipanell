FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

# یه nginx config می‌نویسیم که پورت رو از $PORT بخونه
RUN printf 'server {\n\
    listen ${PORT};\n\
    root /usr/share/nginx/html;\n\
    index index.html;\n\
    location / {\n\
        try_files $uri $uri/ /index.html;\n\
    }\n\
}\n' > /etc/nginx/templates/default.conf.template

# پورت پیش‌فرض
ENV PORT=8080
EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
