#!/bin/sh
mkdir -p /data/db
mongod &
java -jar /backend/BudgetManagerBackend.jar /start/config.json