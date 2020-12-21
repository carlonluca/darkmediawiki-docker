FROM mediawiki:1.35.0
ADD https://github.com/dolfinus/DarkVector/archive/master.zip /var/www/html/skins/
WORKDIR /var/www/html/skins/
RUN apt-get update && apt-get install -y unzip
RUN unzip master.zip
RUN mv DarkVector-master DarkVector
RUN apt-get remove -y unzip && apt-get clean
