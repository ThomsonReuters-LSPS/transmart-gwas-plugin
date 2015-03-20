#!/bin/sh

PASS=tr
HOST=127.0.0.1
SID=transmart

echo exit | sqlplus system/$PASS@$HOST:1521/$SID @1.drops.sql

imp system/$PASS@$HOST:1521/$SID file=deapp.de_snp_gene_map.dmp  tables=de_snp_gene_map touser=deapp
imp system/$PASS@$HOST:1521/$SID file=deapp.de_rc_snp_info.dmp  tables=de_rc_snp_info touser=deapp
imp system/$PASS@$HOST:1521/$SID file=deapp.de_gene_info.dump  tables=de_gene_info touser=deapp  
imp system/$PASS@$HOST:1521/$SID file=biomart.bio_recombination_rates.dump  tables=bio_recombination_rates touser=biomart

