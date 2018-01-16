./#!/bin/bash

killall geth 
rm -rf ~/.eh*
rm -rf ~/test/data
geth --datadir=~/test/data init geth/genesis.json
geth --datadir=~/test/data --password <(echo -n "") account new
geth --datadir=~/test/data --rpc --rpcaddr 0.0.0.0 --rpcport "8545" --rpccorsdomain "*" --gasprice 0 --unlock 0 --password <(echo -n "") --mine --minerthreads 8
../driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db ethereum