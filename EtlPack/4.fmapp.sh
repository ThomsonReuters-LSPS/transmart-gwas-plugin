#!/bin/sh

PASS=tr
HOST=192.168.2.111
SID=tmerck

echo exit | sqlplus system/$PASS@$HOST:1521/$SID @4.fmapp.sql
echo exit | sqlplus deapp/deapp@$HOST:1521/$SID @4.indexes.sql

