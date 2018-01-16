#!/bin/bash
#args: number_of_nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

cd $EXE_HOME
./driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db ethereum
