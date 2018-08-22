#!/bin/bash
#Thanks
#https://community.hortonworks.com/content/supportkb/151054/automatic-creation-of-user-directory-in-hdfs.html

export FROM_HADOOP_PROFILE=1 
uname=`whoami` 
hdir=""

if [[ "$uname" == "root" ]] 
  then 
	hdir="/root" 
else 
	hdir="/user/$uname" 
fi

hdfs dfs -ls -d $hdir &> /dev/null
lsout=$?  
#echo $lsout 
if [[ "$lsout" != "0" ]] 
  then 	 
	hdfs dfs -mkdir $hdir &> /dev/null
	#hdfs dfs -chmod 700 $hdir
fi  

