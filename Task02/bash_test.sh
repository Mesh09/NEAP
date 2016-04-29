#!/bin/sh

#NWDIR='/home/a/ansari/Desktop/NEAP/Testing'
NWFILE='/home/proj/biocluster/NEAP_SS16/ansari/Solution1/test_paths.txt'
NWOUT='/home/proj/biocluster/NEAP_SS16/ansari/Solution2/network_statistics.txt'
SEED=$(awk "NR==$SGE_TASK_ID" $NWFILE)


#Create a File to where the output is written to
echo -e "\t\t\tNumber of Nodes \tNumber of edges \tNetwork Density\n" > $NWOUT

#echo $SEED
#snap2 -i $SEQDIR/FASTA/$SEED -m all --print-collection -o $SEQDIR/Output/$SEED.snap2
java -jar $NWDIR/NEAP-praktikum.jar -m1 -i$SEED > $NWOUT
