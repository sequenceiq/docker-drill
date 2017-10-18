Apache Drill Docker container
=======

A single node [Apache Drill](https://drill.apache.org/) container, to quick start and learn Drill.

###Build the container

You can build the container from the Dockerfile. In order to do that run:

```
docker build -t "rvolykh/apache-drill" . 
``` 

###Pull the container

It is possible to download image from the Docker registry. 

```
docker pull rvolykh/apache-drill
```

###Run the container 

Once you have pulled the container you are ready to use Drill. Entrypoint is `sqlline`, so you are ready to issue queries. Please note that the data has to be available in the container (Drill comes with sample data).

```
docker run -it rvolykh/apache-drill /opt/drill/apache-drill-1.11.0/bin/sqlline -u jdbc:drill:zk=local
```

###Run the container with volume

For a more comprehensive Drill experience you can query data external to your container - the only thing you will need to do is to mount an external folder from your `host`.
Once the volume is mounted you can access the Drill UI at http://CONTAINER_IP:8047, you can either add a new file system based storage plugin workspace pointing to the mounted folder, or use the default file system storage workspace.

```
docker run -it -v /data:/data rvolykh/apache-drill jdbc:drill:zk=local
```

###UI

Apache Drill is available on: `http://CONTAINER_IP:8047/`       
      
*Note: you can find your container IP by running docker inspect CONTAINER_ID_

###Run container in compose
```
    apache-drill:
        image: rvolykh/apache-drill
        ports:
            - "8047:8047"
        stdin_open: true
        tty: true
        networks:
            internal:
```

### Git repository
https://github.com/rvolykh/docker-drill

