spark-submit --packages --packages org.apache.spark:spark-sql-kafka-0-10_2.11:2.3.0  kafka.py localhost subscribe test
spark-submit --packages org.apache.spark:spark-sql-kafka-0-10_2.12:2.4.3 kafka.py localhost subscribe test,testtoc



bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic test
