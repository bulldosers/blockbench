#!/bin/bash
ip_addr=$1
ETH_DATA=/data/fuwanzeng/eth
ETH_HOME=~/blockchain-perf/benchmark/ethereum_1.5
GETH=/users/fuwanzeng/geth-linux-amd64-1.5.0-c3c58eb6/geth
. ETH_HOME/env.sh

${GETH} --datadir=$ETH_DATA --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --networkid 9119 --unlock 0 --password <(echo -n "") js <(echo 'console.log(admin.nodeInfo.enode);') 2>/dev/null |grep enode | perl -pe "s/\[\:\:\]/$ip_addr/g" | perl -pe "s/^/\"/; s/\s*$/\"/;"

