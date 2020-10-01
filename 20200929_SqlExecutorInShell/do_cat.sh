#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

cat $TARGETDIR/index/WARDROBE_AP/WA/WARDROBE_INFO_TMP*/data.csv> $TARGETDIR/WARDROBE_INFO_allRecord.csv

cat $TARGETDIR/index/WARDROBE_AP/WE/WEATHER_INFO_TMP*/data.csv> $TARGETDIR/WEATHER_INFO_allRecord.csv


cat $TARGETDIR/index/WARDROBE_AP/US/USER_INFO_TMP*/data.csv> $TARGETDIR/USER_INFO_allRecord.csv


echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

