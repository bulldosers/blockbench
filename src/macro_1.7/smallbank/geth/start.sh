./#!/bin/bash

killall geth 
rm -rf ~/.eh*
#mkdir -p ~/test/data/eth
rm -rf ~/test/data/eth
geth --datadir=~/test/data/eth init genesis.json
geth --datadir=~/test/data/eth --password <(echo -n "") account new
geth --datadir=~/test/data/eth --etherbase=0x0000000000000000000000000000000000000000 --rpc --rpcaddr 0.0.0.0 --rpcport "8545" --rpccorsdomain "*" --gasprice 0 --unlock 0 --password <(echo -n "") --mine --minerthreads 8

../driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db ethereum

./driver -ops 100 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db ethereum

ssh slave-4 LD_LIBRARY_PATH=/users/dinhtta/local/lib:$LD_LIBRARY_PATH && ~/blockchain-perf/src/macro/smallbank/driver -ops 10000 -threads 4 -txrate 10 -fp stat.txt -endpoint 10.0.0.8:8545 -db ethereum