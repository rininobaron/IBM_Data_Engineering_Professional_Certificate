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

# Exercise 3 - Start the Kafka broker service

# Start the Kafka message broker service
echo "Start the Kafka message broker service"
$KAFKA/bin/kafka-server-start.sh $KAFKA/config/server.properties