#!/bin/bash
# args=THREADS index N txrate
echo "start-clients.sh"
echo IN START_CLIENTS $1 $2 $3 $4

cd `dirname ${BASH_SOURCE-$0}`
. env.sh

export CPATH=/users/dinhtta/local/include
export LIBRARY_PATH=/users/dinhtta/local/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/users/dinhtta/local/lib:$LD_LIBRARY_PATH


#LOG_DIR=$ETH_HOME/../src/ycsb/exp_$3"_"servers_run4
LOG_DIR=$LOG_DIR/exp_$3"_"servers_$1"_"threads_$4"_"rates
mkdir -p $LOG_DIR
i=0
for host in `cat $HOSTS`; do
  let n=i/2
  let i=i+1
  if [[ $n -eq $2 ]]; then
    #cd $ETH_HOME/../src/ycsb
    cd $EXE_HOME
    #both ycsbc and smallbank use the same driver
    nohup ./driver -P workloads/workloada.spec -threads $1 -endpoint $host:8000 -txrate $4 -db ethereum > $LOG_DIR/client_$host"_"$1 2>&1 &

    #nohup ./driver -ops 10000 -threads $1 -endpoint $host:8000 -txrate $4 -db ethereum > $LOG_DIR/client_$host"_"$1 2>&1 &
  fi
done

#driver -db parity -threads 4 -P workloads/workloada.spec -endpoint 127.0.0.1:8545 -txrate 10
#../driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db ethereum
