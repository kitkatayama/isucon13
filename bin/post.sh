#!/bin/bash

echo '### score'
echo
echo '```'

tail -n 4 /tmp/benchout

echo '```'
echo

echo 'alp'

echo ''

git log -1

echo '```'
sudo cat /var/log/nginx/access.log | alp ltsv -m '/api/schedules/[a-zA-Z0-9]+'
echo '```'
