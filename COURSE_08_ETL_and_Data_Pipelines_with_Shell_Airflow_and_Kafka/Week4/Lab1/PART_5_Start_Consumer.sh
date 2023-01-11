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

# Exercise 6 - Start Consumer

echo "Start a consumer"
$KAFKA/bin/kafka-console-consumer.sh --topic news --from-beginning --bootstrap-server localhost:9092