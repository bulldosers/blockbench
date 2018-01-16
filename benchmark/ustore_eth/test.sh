#!/bin/bash
#args: number_of_nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

export GETH=/data/fuwanzeng/gowork/src/github.com/etheruem/go-ethereum/build/bin/geth

killall geth 
rm -rf ~/.eh*
rm -rf $ETH_DATA
${GETH} --datadir=$ETH_DATA init genesis++.json
${GETH} --datadir=$ETH_DATA --password <(echo -n "") account new
${GETH} --datadir=$ETH_DATA --rpc --rpcaddr 0.0.0.0 --rpcport "8545" --rpccorsdomain "*" --gasprice 0 --unlock 0 --password <(echo -n "") --mine --minerthreads 8


