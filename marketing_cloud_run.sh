#!/bin/bash -x

kinit hdfs/sDMAAdminHDP1@AD.SJM.COM -kt /etc/security/keytabs/sDMAAdminHDP1.keytab

hdfs dfs -put -f /data/projects/MARKET/market_cloud/oozie /projects/marketing_analytics/market_cloud/

oozie job -oozie http://usspphadop06.sjm.com:11000/oozie -config /data/projects/MARKET/market_cloud/marketing_cloud_job.properties -run
