# Create a topic and producer for processing bank ATM transactions

# Look for Kafka directory
echo "Look for Kafka directory"
for file in *;
do
	if [ ${file:0:5} == "kafka" ]
	then
		# Save kafka version name
		KAFKA=$file
		echo "VERSION "$KAFKA
		break
	fi
done

# Create a new topic
echo "Create a new topic"
$KAFKA/bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic bankbranch  --partitions 2

# List the topics
echo "List the topics"
$KAFKA/bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

# Show details of the topic
echo "Show details of the topic"
$KAFKA/bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic bankbranch

# Start a producer
echo "Start a producer"
$KAFKA/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic bankbranch 

# Type a message on the '>' prompt
# Copy and paste the messages between the comment statement below
# Enter one by one

<<comment

{"atmid": 1, "transid": 100}

{"atmid": 1, "transid": 101}

{"atmid": 2, "transid": 200}

{"atmid": 1, "transid": 102}

{"atmid": 2, "transid": 201}

comment