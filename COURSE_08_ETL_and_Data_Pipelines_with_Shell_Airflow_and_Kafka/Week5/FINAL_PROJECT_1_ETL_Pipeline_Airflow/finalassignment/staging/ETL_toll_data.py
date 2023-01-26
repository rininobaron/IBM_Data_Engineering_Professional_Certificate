# import the libraries

from datetime import timedelta
# The DAG object; we'll need this to instantiate a DAG
from airflow import DAG
# Operators; we need this to write tasks!
from airflow.operators.bash_operator import BashOperator
# This makes scheduling easy
from airflow.utils.dates import days_ago

# Define DAG arguments

default_args = {
    'owner': 'Ricardo Niño de Rivera',
    'start_date': days_ago(0),
    'email': ['ricardo@somemail.com'],
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}


# Define the DAG

dag = DAG(
    'ETL_toll_data',
    default_args=default_args,
    description='Apache Airflow Final Assignment',
    schedule_interval=timedelta(days=1),
)


# Define the tasks

# Dedine the first task (unzip data)

unzip_data = BashOperator(
    task_id='unzip-data',
    bash_command='tar zxvf tolldata.tgz',
    dag=dag,
)

# Define the second task (extract data from csv file)

extract_data_from_csv = BashOperator(
    task_id='extract-data-from-csv',
    bash_command='cut -d"," -f1-4 vehicle-data.csv > csv_data.csv',
    dag=dag,
)

# Define the third task (extract data from tsv file)

extract_data_from_tsv = BashOperator(
    task_id='extract-data-from-tsv',
    bash_command='dos2unix tollplaza-data.tsv; cat tollplaza-data.tsv | tr -s "\\t" "," | cut -d"," -f5-7 > tsv_data.csv',
    dag=dag,
)

# Define the fourth task (extract data from fixed width file)

extract_data_from_fixed_width = BashOperator(
    task_id='extract-data-from-fixed-width',
    bash_command='rev payment-data.txt | cut -d" " -f1,2 | rev |  tr -s " " "," > fixed_width_data.csv',
    dag=dag,
)

# Define the fifth task (consolidate data extracted from previous tasks)

consolidate_data = BashOperator(
    task_id='consolidate-data',
    bash_command='paste -d"," csv_data.csv tsv_data.csv fixed_width_data.csv > extracted_data.csv',
    dag=dag,
)

# Define the sixth task (transform and load the data)

transform_data = BashOperator(
    task_id='transform-data',
    bash_command='paste -d"," <(cat extracted_data.csv | cut -d"," -f1-3) <(cat extracted_data.csv | cut -d"," -f4 | tr "[:lower:]" "[:upper:]") <(cat extracted_data.csv | cut -d"," -f5-9) > transformed_data.csv',
    dag=dag,
)


# Task pipeline

unzip_data >> extract_data_from_csv >> extract_data_from_tsv >> extract_data_from_fixed_width >> consolidate_data >> transform_data