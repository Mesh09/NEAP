#!/bin/sh

NWDIR='/home/a/ansari/Desktop/NEAP/Testing'
NWFILE='/home/a/ansari/Desktop/NEAP/Task01/input_networks.txt'
NWOUT='/home/a/ansari/Desktop/NEAP/Testing/test_stats.txt'
#SEED=awk '$0=="current"' $NWFILE
SEED='blood_vessel_top.gz'

#Create a File to where the output is written to
echo -e "\t\t\tNumber of Nodes \tNumber of edges \tNetwork Density" > $NWOUT

echo $SEED
#snap2 -i $SEQDIR/FASTA/$SEED -m all --print-collection -o $SEQDIR/Output/$SEED.snap2
echo -E $(java -jar $NWDIR/NEAP_praktikum.jar -m1 -i$SEED) >> $NWOUT
