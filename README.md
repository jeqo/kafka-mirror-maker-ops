# Kafka Mirror Maker operations

Instrumentation of Kafka Mirror Maker to collect metrics and traces.

## How to use

Start environment:

```bash
docker-compose up -d
```

Create topics:

```
make kafka-topics
```

Use kafkacat to produce/consume messages:

```bash
$ kafkacat -b localhost:29092 -P -t t1
a
b
c
# exit
$ kafkacat -b localhost:29092 -C -t t1
a
c
b
% Reached end of topic t1 [1] at offset 1
% Reached end of topic t1 [0] at offset 2
```
