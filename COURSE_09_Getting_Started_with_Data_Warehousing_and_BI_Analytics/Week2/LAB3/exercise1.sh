#! /usr/bin/env bash

echo "Exercise 1 - Getting the environment ready"
echo ""
sleep 2
echo "Start server"
#start_server
echo ""
sleep 2
file="setup_staging_area.sh"
echo "Step 2: Download the staging area setup script."
echo "wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Verifying%20Data%20Quality%20for%20a%20Data%20Warehouse/"$file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Verifying%20Data%20Quality%20for%20a%20Data%20Warehouse/$file
sleep 4
clear

echo ""
echo "EXTRA STEP"
echo "Configuring file in order to execute without calling bash interpreter"
echo 'echo -e "#! /usr/bin/env bash\n\n$(cat $file)" > $file'
echo -e "#! /usr/bin/env bash\n\n$(cat $file)" > $file
echo ""
sleep 2
echo "Make "$file" executable"
chmod +x $file
sleep 2
echo "Check file permissions"
echo "ls -l "$file
echo ""
sleep 4
clear

echo "Step 3: Run the setup script"
echo "./"$file
./$file