#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt


cat $TARGETDIR/index/PIOAP/_S/_SYS_SPLIT_CONSULT_CM_TMP*/data.csv>  $TARGETDIR/CONSULT_CM_allRecord.csv


echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

