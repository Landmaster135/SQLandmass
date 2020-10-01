#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

wc -l /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/WA/WARDROBE_INFO/data.csv>linesResult.txt 2>&1

wc -l /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/WE/WEATHER_INFO/data.csv>>linesResult.txt 2>&1


wc -l /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/US/USER_INFO/data.csv>>linesResult.txt 2>&1

wc -l /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CO/CONSULT_PARTY_INFO/data.csv>>linesResult.txt 2>&1
wc -l /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CC/CC_Q_INFO/data.csv>>linesResult.txt 2>&1
wc -l /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CC/CC_A_INFO/data.csv>>linesResult.txt 2>&1


echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

