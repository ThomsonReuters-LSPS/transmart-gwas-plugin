#!/bin/sh

PASS=tr
ETL_DIR="/home/transmart/dev/gwas/ETL"

## load_analysis_batch and nightly
sh "$ETL_DIR/load_analysis_batch.sh"
sh "$ETL_DIR/nightly_processing.sh"

