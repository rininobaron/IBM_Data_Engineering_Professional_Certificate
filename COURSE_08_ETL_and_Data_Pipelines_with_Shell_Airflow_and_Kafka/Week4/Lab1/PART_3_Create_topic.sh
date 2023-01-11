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

# Exercise 4 - Create a topic

echo "Create a topic 'news'"
$KAFKA/bin/kafka-topics.sh --create --topic news --bootstrap-server localhost:9092