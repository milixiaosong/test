#!/bin/bash
 
echo 'checking mysql status.'
service mysql status
 
echo '1.start mysql....'
service mysql start
sleep 10s
service mysql status

echo "create database pboot" | mysql -u root -p
sleep 3s
 
echo '2.start importing data....'
mysql pboot < /mysql/pboot.sql
echo '3.end importing data....'
 
sleep 10s
service mysql status

#sleep 3
#service mysql status
#echo 'mysql is ready'

#tail -f /dev/null