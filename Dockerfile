FROM mediawiki:1.39.0
ADD https://github.com/dolfinus/DarkVector/archive/1195cfb40c89aa4398b934e27d0dd22cb787be37.zip /var/www/html/skins/
WORKDIR /var/www/html/skins/
RUN apt-get update && apt-get install -y unzip
RUN unzip 1195cfb40c89aa4398b934e27d0dd22cb787be37.zip
RUN mv DarkVector-1195cfb40c89aa4398b934e27d0dd22cb787be37 DarkVector
RUN apt-get remove -y unzip && apt-get clean