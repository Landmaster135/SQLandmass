#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt


cat $TARGETDIR/index/WARDROBE_AP/_S/_SYS_SPLIT_WARDROBE_INFO_TMP*/data.csv> $TARGETDIR/WARDROBE_INFO_allRecord.csv

cat $TARGETDIR/index/WARDROBE_AP/_S/_SYS_SPLIT_WARDROBE_INFO_TMP*/data.csv> $TARGETDIR/WEATHER_INFO_allRecord.csv


cat $TARGETDIR/index/WARDROBE_AP/_S/_SYS_SPLIT_WARDROBE_INFO_TMP*/data.csv> $TARGETDIR/USER_INFO_allRecord.csv

cat $TARGETDIR/index/WARDROBE_AP/_S/_SYS_SPLIT_WARDROBE_INFO_TMP*/data.csv> $TARGETDIR/SEARCH_COUNT_FOR_CC_INFO_ALL_allRecord.csv


echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

