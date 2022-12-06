# import the libraries

from datetime import timedelta
# The DAG object; we'll need this to instantiate a DAG
from airflow import DAG
# Operators; we need this to write tasks!
from airflow.operators.bash_operator import BashOperator
# This makes scheduling easy
from airflow.utils.dates import days_ago

#defining DAG arguments

# You can override them on a per-task basis during operator initialization
default_args = {
    'owner': 'Ricardo Niño de Rivera',
    'start_date': days_ago(0),
    'email': ['ricardo@somemail.com'],
    'email_on_failure': False,
    'email_on_retry': False,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# defining the DAG

# define the DAG
dag = DAG(
    'etl-server-access-log-processing',
    default_args=default_args,
    description=' ETL Server Access Log Processing',
    schedule_interval=timedelta(days=1),
)

# define the tasks

# define the first task

download = BashOperator(
    task_id='download',
    bash_command='wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Apache%20Airflow/Build%20a%20DAG%20using%20Airflow/web-server-access-log.txt',
    dag=dag,
)


# define the second task
extract = BashOperator(
    task_id='extract',
    bash_command='cut -d"#" -f1,4 /home/ricardo/IBM_Data_Engineering_Professional_Certificate/COURSE_08_ETL_and_Data_Pipelines_with_Shell_Airflow_and_Kafka/Week3/Lab2/web-server-access-log.txt > /home/ricardo/airflow/dags/extracted-data.txt',
    dag=dag,
)

# define the third task
transform = BashOperator(
    task_id='transform',
    bash_command='upperstr=$(echo "visitorid" | tr "[:lower:]" "[:upper:]") | sed -i "s/visitorid/$upperstr/" /home/ricardo/airflow/dags/extracted-data.txt',
    dag=dag,
)

# define the second task
load = BashOperator(
    task_id='load',
    bash_command='tr "#" "," < /home/ricardo/airflow/dags/extracted-data.txt > /home/ricardo/airflow/dags/transformed-data.csv',
    dag=dag,
)

# task pipeline
download >> extract >> transform >> load