#!/bin/sh
#$ -t 1-145
#specify how many of the networks in input_networks.txt should be considered (145 in total)

NWDIR='/home/a/ansari/Desktop/NEAP/Task02'
NWFILE='/home/a/ansari/Desktop/NEAP/Task01/input_networks.txt'
#NWOUT='/home/a/ansari/Desktop/NEAP/Task02/network_statistics_TOP.txt'
DDOUT='/home/a/ansari/Desktop/NEAP/Task02/degree_distribution/TOP/'
SEED=$(awk "NR==$SGE_TASK_ID" $NWFILE)
#SEED='blood_vessel_top.gz' <- for testing

#Create a File to where the output is written to
#echo -e "\t\t\tNumber of Nodes \tNumber of edges \tNetwork Density" > $NWOUT

#Only Statistics
#echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m1 -i$SEED) >> $NWOUT
echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m1 -i$SEED)

#With Degree Distribution
#java -jar $NWDIR/NEAP_praktikum.jar -m1 -i$SEED -d$DDOUT | xargs -0 echo -e >> $NWOUT <-wrong
#echo -e $(java -jar $NWDIR/NEAP_praktikum.jar -m1 -i$SEED -d$DDOUT) >> $NWOUT

