
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test


bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test


spark-submit --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.4.1 kafka.py localhost:9092 subscribe test11
