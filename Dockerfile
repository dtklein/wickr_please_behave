FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y unzip
ADD https://s3.amazonaws.com/static.wickr.com/downloads/ubuntu/me/WickrMe-5.2.4.zip  WickrMe-5.2.4.zip
RUN unzip WickrMe-5.2.4.zip
##################################
# RUN apt-get install --fix-missing -y ./WickrMe_5.02.04-01_amd64.deb ./wickr-qt_5.9.4_amd64.deb
# There's a bunch of prerequs that are not listed as dependancies for the WickrMe_5.02.04-01_amd64 package
# Adding them to the apt-get commands
##################################
RUN apt-get install --fix-missing -y ./WickrMe_5.02.04-01_amd64.deb ./wickr-qt_5.9.4_amd64.deb libhunspell-1.3-0 libprotobuf9v5 libnss3 libxss1 libxslt1.1 || apt-get install --fix-missing -y
CMD /usr/bin/WickrMe

# Build it, then run it, using the outer OS's XWindow to run the GUI
# sudo docker build -t wickr $(pwd) \
#     && sudo docker run \
#         -t -i --net=host --env="DISPLAY"  \
#         --volume="$HOME/.Xauthority:/root/.Xauthority:rw"  \
#         --volume="$HOME/.local/share:/root/.local/share:rw"  \
#         wickr 
#
#
