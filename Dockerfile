FROM dockerfile/java:oracle-java7
MAINTAINER SequenceIQ

# install dev tools
RUN apt-get install -y wget tar sudo

# get drill
RUN wget http://getdrill.org/drill/download/apache-drill-0.5.0-incubating.tar.gz
# create Drill folder
RUN sudo mkdir -p /opt/drill

# extract Drill
RUN sudo tar -xvzf apache-drill-0.5.0-incubating.tar.gz -C /opt/drill

# add boostrap.sh
ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENV BOOTSTRAP /etc/bootstrap.sh
