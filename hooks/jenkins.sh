#!/bin/bash
#Change the variables with the valid values and move the jenkins.sh file to .git/hooks local folder
#DO NOT CHANGE THIS FILE AND PUSH IT
JENKINS_URL="http://0.0.0.0"
JENKINS_ADMIN_USER="admin"
JENKINS_ADMIN_PASSWORD="adminpassword"
JENKINS_JOB_TOKEN=""
curl -u ${JENKINS_ADMIN_USER}:${JENKINS_ADMIN_PASSWORD} http://${JENKINS_URL}:8080/job/Lolek%20build%20and%20push/build?token=${JENKINS_JOB_TOKEN}