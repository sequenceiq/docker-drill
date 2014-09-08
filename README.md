Apache Drill Docker container
=======

###Build the container

docker build -t sequenceiq/drill .   

###Pull the container

docker pull sequenceiq/drill

###Run the container 

docker run -it sequenceiq/drill /etc/bootstrap.sh

###Run the container with volume

docker run -it -v /data:/data sequenceiq/drill /etc/bootstrap.sh
