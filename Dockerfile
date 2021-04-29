FROM php:7.3-apache
# COPY piwigo/ /usr/src/piwigo
# WORKDIR /usr/src/piwigo
COPY piwigo/ /var/www/html/
WORKDIR /var/www/html/
RUN apt-get update -y && 
RUN docker-php-ext-install mysqli
EXPOSE 80
RUN chmod 777 -R /var/www/html/
#CMD ["php","-S","0.0.0.0:80","-t","piwigo"]
#CMD [ "php", "./install.php" ]

# FROM php:7.3-apache
# COPY  piwigo/ /usr/src/piwigo
# WORKDIR /usr/src/piwigo
# RUN docker-php-ext-install mysqli
# RUN apache2ctl restart 
# RUN apt-get update -y
# RUN apt-get upgrade -y
# RUN apt-get install php7.3-mysql
# CMD [ "php", "./install php" ]
# EXPOSE 80
