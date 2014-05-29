#!/bin/bash
# Load RVM into a shell session *as a function*

[[ -s "/home/gavin/.rvm/scripts/rvm" ]] && source "/home/gavin/.rvm/scripts/rvm"

cd /var/lib/jenkins/jobs/Testingbot\ Test/workspace 
rvm use 1.9.3
bundle show capybara
which cucumber

#unset JENKINS_SERVER_COOKIE
#export DISPLAY=:0.0

exec cucumber -f json -o cucumber.json
