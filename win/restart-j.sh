#!/bin/bash
ssh -o StrictHostKeyChecking=no -i /d/q.pem root@$1 "service ttt stop; \
sleep 3; \
ps faux|grep java|grep ttt|awk '{print \$2}'|xargs --no-run-if-empty kill -9"
ssh -o StrictHostKeyChecking=no -i /d/q.pem root@$1 "rm -rf /opt/ttt/kafka/storage/* ; \
rm -rf /opt/ttt/kafka/zookeeper-data/* ; \
rm -rf /opt/ttt/kafka/control_topic_created.txt ; \
service ttt start kafka; \
sleep 30; \
service ttt start jetty; \
ps aux | grep jetty.st ; \
sleep 30"