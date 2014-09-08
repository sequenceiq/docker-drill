Apache Drill Docker container
=======

###Build the container

docker build -t sequenceiq/drill .   

###Pull the container

docker pull sequenceiq/drill

###Run the container

docker run -i -t -v /sample-data:/sample-data  sequenceiq/drill /etc/bootstrap.sh
