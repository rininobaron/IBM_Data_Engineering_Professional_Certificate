#! /usr/bin/env bash

echo "Exercise 4 - Verify a db2cli dsn"

echo "Verify dsn 'production' is working"

db2cli validate -dsn production -connect -user XXXXXXXX -passwd XXXXXXXXXXX
