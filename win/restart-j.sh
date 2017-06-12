#!/bin/bash
ssh -o StrictHostKeyChecking=no -i /d/q.pem root@$1 "service TADA stop; \
sleep 3; \
ps faux|grep java|grep TADA|awk '{print \$2}'|xargs --no-run-if-empty kill -9"
ssh -o StrictHostKeyChecking=no -i /d/q.pem root@$1 "rm -rf /opt/TADA/kafka/storage/* ; \
rm -rf /opt/TADA/kafka/zookeeper-data/* ; \
rm -rf /opt/TADA/kafka/control_topic_created.txt ; \
service TADA start kafka; \
sleep 30; \
service TADA start jetty; \
ps aux | grep jetty.st ; \
sleep 30"