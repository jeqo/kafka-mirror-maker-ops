.PHONY: all
all:

.PHONY: kafka-topics
kafka-topics:
	docker-compose exec kafka_1 kafka-topics \
		--zookeeper zookeeper_1:12181 --create --topic t1 --partitions 2 --replication-factor 1 --if-not-exists
	docker-compose exec kafka_2 kafka-topics \
		--zookeeper zookeeper_2:22181 --create --topic t1 --partitions 2 --replication-factor 1 --if-not-exists
