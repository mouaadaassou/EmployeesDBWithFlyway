#!/bin/bash

######################################################################################################
### Used to migrate the DB locally, please note that you have to put your db username & passwords  ###
### it uses maven flyway plugin, for more details check: https://flywaydb.org/documentation/maven/ ###
######################################################################################################

read -sp "please enter your database username: " username
echo
read -sp "please enter your database password: " password

printf "\n\n####################################################################"
printf "\n########################## RUNNING FLYWAY ##########################"
printf "\n####################################################################\n\n"

mvn flyway:migrate -Dmysql.user=$username -Dmysql.password=$password
