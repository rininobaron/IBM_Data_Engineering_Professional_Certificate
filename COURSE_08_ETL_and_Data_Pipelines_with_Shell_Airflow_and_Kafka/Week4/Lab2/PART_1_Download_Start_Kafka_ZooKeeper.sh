# Download and extract Kafka

LINK="https://archive.apache.org/dist/kafka/2.8.0/kafka_2.12-2.8.0.tgz"

# Check if Kafka tgz file is downloaded
echo "Check if Kafka is downloaded"
KAFKA=""
for file in *;
do
	if [ ${file:0:5} == "kafka" ] && [ ${file:0-4} == ".tgz" ]
	then
		# Save kafka version name
		KAFKA=${file:0:-4}
		# Extract Kafka
		echo "Extract Kafka file"
		tar -xzf $file
		rm -rf $file
		echo $file" IS DELETED"
		echo "VERSION "$KAFKA
		break
	fi
done
# If there is NOT Kafka tgz file
if [[ $KAFKA == "" ]]
then
	echo "Download Kafka tgz file"
	wget $LINK
	for file in *;
	do
		if [ ${file:0:5} == "kafka" ] && [ ${file:0-4} == ".tgz" ]
		then
			# Save kafka version name
			KAFKA=${file:0:-4}
			# Extract Kafka
			echo "Extract Kafka file"
			tar -xzf $file
			rm -rf $file
			echo $file" IS DELETED"
			echo "VERSION "$KAFKA
			break
			fi
	done
fi

# Start the ZooKeeper server

echo "Start the ZooKeeper server"
$KAFKA/bin/zookeeper-server-start.sh $KAFKA/config/zookeeper.properties