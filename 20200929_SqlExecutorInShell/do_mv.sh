#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

mkdir -p /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/WA/WARDROBE_INFO; mv WARDROBE_INFO_allRecord.csv /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/WA/WARDROBE_INFO/data.csv

mkdir -p /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/WE/WEATHER_INFO; mv WEATHER_INFO_allRecord.csv /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/WE/WEATHER_INFO/data.csv


mkdir -p /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/US/USER_INFO; mv USER_INFO_allRecord.csv /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/US/USER_INFO/data.csv

mkdir -p /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CO/CONSULT_PARTY_INFO; mv CONSULT_PARTY_INFO_allRecord.csv /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CO/CONSULT_PARTY_INFO/data.csv
mkdir -p /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CC/CC_Q_INFO; mv CC_Q_INFO_allRecord.csv /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CC/CC_Q_INFO/data.csv
mkdir -p /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CC/CC_A_INFO; mv CC_A_INFO_allRecord.csv /backup_nfs/work/20200828_export/taihi/index/WARDROBE_AP/CC/CC_A_INFO/data.csv

echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

