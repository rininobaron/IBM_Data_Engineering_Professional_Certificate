AIRFLOW_HOME=/home/ricardo/airflow

DAG_file=ETL_Server_Access_Log_Processing.py

# Task 10 Submit the DAG
cp $DAG_file $AIRFLOW_HOME/dags

echo "DAG " $DAG_file " was submitted!"
echo ""
echo "Wait, please!"
sleep 5

# Task 11 Verify fi the DAG is submitted
echo ""
if airflow dags list|grep "etl-server-access-log-processing"; then
	echo "Success!"
else
	echo "Theres is no DAG!, Try again!"
fi