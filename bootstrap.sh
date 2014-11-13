#!/bin/bash

: ${DRILL_HOME:=/opt/drill/apache-drill-0.6.0-incubating}


cd /opt/drill/apache-drill-0.6.0-incubating;
sudo bin/sqlline -u jdbc:drill:zk=local
