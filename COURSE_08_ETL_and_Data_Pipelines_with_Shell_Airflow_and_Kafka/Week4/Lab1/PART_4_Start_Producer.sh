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

# Exercise 5 - Start Producer

echo "Start a producer"

$KAFKA/bin/kafka-console-producer.sh --topic news --bootstrap-server localhost:9092

# Type a message on the '>' prompt
# You can copy and paste the messages between the comment statement below
<<comment
Good morning
Good day
Enjoy the Kafka lab
comment