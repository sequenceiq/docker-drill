#FROM dockerfile/java:oracle-java7
FROM java:7
MAINTAINER SequenceIQ

# install dev tools
RUN apt-get update && apt-get install -y wget tar sudo

# get drill
RUN wget http://www-us.apache.org/dist/drill/drill-1.8.0/apache-drill-1.8.0.tar.gz
# create Drill folder
RUN sudo mkdir -p /opt/drill

# extract Drill
RUN sudo tar -xvzf apache-drill-1.8.0.tar.gz -C /opt/drill

# rename apache drill folder
RUN sudo mv /opt/drill/apache-drill-1.8.0 /opt/drill/apache-drill

# add boostrap.sh
ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENV BOOTSTRAP /etc/bootstrap.sh
