FROM centos:latest
MAINTAINER Rashid Hussain
RUN yum install -y httpd \
         zip\
         unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page266/radiance.zip
WORKDIR /var/www/html
RUN unzip radiance.zip
RUN cp -rvf radiance/* .
RUN radiance.zip
CMD ["/usr/sbin/httpd", "-D", "FORGROUND"]
EXPOSE 80
