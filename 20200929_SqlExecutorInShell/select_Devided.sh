#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

hdbsql -U PIOAPKEY -I $TARGETDIR/select_Devided.sql

echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

