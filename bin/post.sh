#!/bin/bash

echo '## git'

git -C /home/isucon/webapp/ log -1

echo ''

echo '## alp'

echo ''

echo '```'
# sudo cat /var/log/nginx/access.log | alp ltsv -m '/api/user/[a-zA-Z0-9]/icon+'
sudo cat /var/log/nginx/access.log | alp ltsv -m '/api/user/[a-zA-Z0-9]+/icon,/api/livestream/[0-9]+/livecomment,/api/livestream/[0-9]+/reaction,/api/livestream/[0-9]+/ngwords,/api/livestream/[0-9]+/moderate,/api/livestream/[0-9]+/report,/api/livestream/[0-9]+/enter,/api/livestream/[0-9]+/exit,/api/livestream/[0-9]+/statistics,/api/user/[a-zA-Z0-9]+/statistics,/api/user/[a-zA-Z0-9]+/theme' --sort sum -r
echo '```'
