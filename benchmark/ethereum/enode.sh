#!/bin/bash
ip_addr=$1
ETH_HOME=/home/dell/anh/blockchain-perf/benchmark/ethereum
HOSTS=$ETH_HOME/hosts
CLIENTS=$ETH_HOME/clients
ETH_DATA=$ETH_HOME/../../../data/dinhtta/eth
LOG_DIR=$ETH_HOME/donothing_donothingresults_1
EXE_HOME=$ETH_HOME/../../src/macro/kv
BENCHMARK=smallbank

#echo "enode.sh"    
geth --datadir=$ETH_DATA --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --networkid 9119 --unlock 0 --password <(echo -n "") js <(echo 'console.log(admin.nodeInfo.enode);') 2>/dev/null |grep enode | perl -pe "s/\[\:\:\]/$ip_addr/g" | perl -pe "s/^/\"/; s/\s*$/\"/;"

