FROM mediawiki:1.38.2
ADD https://github.com/carlonluca/DarkVector/archive/refs/heads/fix137.zip /var/www/html/skins/
WORKDIR /var/www/html/skins/
RUN apt-get update && apt-get install -y unzip
RUN unzip fix137.zip
RUN mv DarkVector-fix137 DarkVector
RUN apt-get remove -y unzip && apt-get clean
