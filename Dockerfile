FROM openjdk:7-jdk
MAINTAINER rvolykh@gmail.com

# install dev tools
RUN apt-get install -yy tar wget

# get drill
RUN cd /tmp/ && \
     wget http://apache.mirrors.hoobly.com/drill/drill-1.11.0/apache-drill-1.11.0.tar.gz && \
     mkdir -p /opt/drill && \     
     tar -xzvf apache-drill-1.11.0.tar.gz -C /opt/drill/ && \
     rm apache-drill-1.11.0.tar.gz

# bootstrap
CMD /bin/bash -c "/opt/drill/apache-drill-1.11.0/bin/sqlline -u jdbc:drill:zk=local"
