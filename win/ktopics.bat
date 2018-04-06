c:\progs\kafka_2.11-1.0.0\bin\windows\kafka-topics.bat --create --topic IPFIX --zookeeper localhost:2181 --partitions 8 --replication-factor 1
c:\progs\kafka_2.11-1.0.0\bin\windows\kafka-topics.bat --create --topic EVENTS --zookeeper localhost:2181 --partitions 1 --replication-factor 1
c:\progs\kafka_2.11-1.0.0\bin\windows\kafka-topics.bat --create --topic ZIFTEN.CONTROL --zookeeper localhost:2181 --partitions 64 --replication-factor 1 --config retention.ms=5184000000


