cd c:/progs/kafka_2.11-1.0.0/bin/windows/
zookeeper-server-start.bat ../config/zookeeper.properties &>/d/k_z_logs/kafka-zookeeper.log
./kafka-server-start.sh ../config/server.properties &>/d/k_z_logs/kafka-server.log