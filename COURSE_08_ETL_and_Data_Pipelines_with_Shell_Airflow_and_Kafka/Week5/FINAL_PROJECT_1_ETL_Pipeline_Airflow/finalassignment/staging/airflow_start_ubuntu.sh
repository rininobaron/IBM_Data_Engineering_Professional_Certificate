# install from pypi using pip
#pip install apache-airflow

# initialize the database
airflow db init

# start the web server, default port is 8080
airflow webserver -p 8080

# visit localhost:8080 in the browser and enable the example dag in the home page
