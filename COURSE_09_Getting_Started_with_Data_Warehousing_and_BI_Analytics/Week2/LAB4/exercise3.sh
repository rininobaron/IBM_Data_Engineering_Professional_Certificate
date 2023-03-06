#! /usr/bin/env bash

echo "Exercise 3 - Create a db2cli dsn"

echo "Create dsn 'production'"

db2cli writecfg add -database bludb -host XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.databases.appdomain.cloud -port 32731 -parameter "SecurityTransportMode=SSL"

db2cli writecfg add -dsn production -database bludb -host XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.databases.appdomain.cloud -port 32731
