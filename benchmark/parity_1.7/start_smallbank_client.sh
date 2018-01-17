#!/bin/bash
THREADS=$1
HOST=$2
LOG=$3
RATE=$4
TOT_OPS=$5
if (($#!=5)); then
	TOT_OPS=10000
fi
cd `dirname ${BASH_SOURCE-$0}`
EXE='../../src/macro_1.7/smallbank/driver'

export CPATH=/users/dinhtta/local/include
export LIBRARY_PATH=/users/dinhtta/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/users/dinhtta/local/lib:$LD_LIBRARY_PATH

nohup $EXE -ops $TOT_OPS -db parity -threads $THREADS -endpoint $HOST -txrate $RATE > $LOG 2>&1 &
