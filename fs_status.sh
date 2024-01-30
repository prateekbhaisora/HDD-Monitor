#!/bin/sh

FU=$(df -H | egrep -v "Filestystem|tmpfs" | grep "nvme0n1p2" | awk '{print $5}' | tr -d % )

TO="testmail@gmail.com"

if [[ $FU -ge 20 ]]
then
	echo "WARNING! Disk space is low. Free up some space."  | mail -s "Alert: Disk Space" $TO
else
	echo "All good! Disk is only $FU% used."
fi
