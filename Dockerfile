FROM mediawiki:1.39.3
ADD https://github.com/dolfinus/DarkVector/archive/f07cb29e4a09d9947a22e0cc62ad34974b986c14.zip /var/www/html/skins/
WORKDIR /var/www/html/skins/
RUN apt-get update && apt-get install -y unzip
RUN unzip f07cb29e4a09d9947a22e0cc62ad34974b986c14.zip
RUN mv DarkVector-f07cb29e4a09d9947a22e0cc62ad34974b986c14 DarkVector
RUN rm f07cb29e4a09d9947a22e0cc62ad34974b986c14.zip
RUN apt-get remove -y unzip && apt-get clean