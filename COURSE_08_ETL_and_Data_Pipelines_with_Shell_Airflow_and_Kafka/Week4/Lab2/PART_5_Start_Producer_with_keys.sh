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

# Start a producer with keys
echo "Start a producer with keys"
$KAFKA/bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic bankbranch --property parse.key=true --property key.separator=:

# Type a message on the '>' prompt
# Copy and paste the messages between the comment statement below
# Enter one by one

<<comment

1:{"atmid": 1, "transid": 102}

1:{"atmid": 1, "transid": 103}

2:{"atmid": 2, "transid": 202}

2:{"atmid": 2, "transid": 203}

1:{"atmid": 1, "transid": 104}

comment