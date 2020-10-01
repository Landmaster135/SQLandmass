#!/bin/sh

. ./targetDir.txt
SHNAME=`basename $0`

echo [$SHNAME] start time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

hdbsql -U PIOAPKEY -I $TARGETDIR/export.sql

echo [$SHNAME] end time >> $TARGETDIR/timestamp.txt
date >> $TARGETDIR/timestamp.txt

