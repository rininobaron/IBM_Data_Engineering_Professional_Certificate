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

# Start the Kafka sever

echo "Start the Kafka server"
$KAFKA/bin/kafka-server-start.sh $KAFKA/config/server.properties