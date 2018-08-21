#!/bin/bash
# RCG - SFU - research-support@sfu.ca.
if [ "$FROM_HADOOP_PROFILE" != "1" ] 
    then 
	/bin/bash -x /etc/profile.d/FromHadoopProf.sh
fi

