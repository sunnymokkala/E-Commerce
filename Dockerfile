FROM amazonlinux:latest
WORKDIR /app
RUN yum update -y
RUN yum install httpd -y
COPY . /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
