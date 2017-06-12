cd c:/progs/kafka_2.11-0.10.1.1/bin/windows/
zookeeper-server-start.bat ../config/zookeeper.properties &>/d/k_z_logs/kafka-zookeeper.log
./kafka-server-start.sh ../config/server.properties &>/d/k_z_logs/kafka-server.log