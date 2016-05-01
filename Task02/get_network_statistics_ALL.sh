#!/bin/sh
#$ -t 1-144
#specify how many of the networks in input_networks_ALL.txt should be considered

THRESH=0.5
NWDIR='/home/a/ansari/Desktop/NEAP/Task02'
NWFILE='/home/a/ansari/Desktop/NEAP/Task01/input_networks_ALL.txt'
#NWOUT='/home/a/ansari/Desktop/NEAP/Task02/network_statistics_ALL_w01.txt'
DDOUT='/home/a/ansari/Desktop/NEAP/Task02/degree_distribution/ALL/w_0.5/'
SEED=$(awk "NR==$SGE_TASK_ID" $NWFILE)
#SEED='blood_vessel.gz'

#Create a File to where the output is written to
#echo -e "\t\t\tNumber of Nodes \tNumber of edges \tNetwork Density" > $NWOUT

#Only Statistics
#echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m2 -i$SEED -w$THRESH) >> $NWOUT
#echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m2 -i$SEED -w$THRESH)

#With Degree Distribution
#echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m2 -i$SEED -w$THRESH -d$DDOUT) >> $NWOUT
echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m2 -i$SEED -w$THRESH -d$DDOUT)
