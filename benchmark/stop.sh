#!/bin/bash

ntpdate
echo --------------ethereum_1.4--------------
cd ~/blockchain-perf/benchmark/ethereum_1.4
./stop-all.sh 32

echo --------------ethereum_1.5--------------
cd ~/blockchain-perf/benchmark/ethereum_1.5
./stop-all.sh 32


echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
./stop-all.sh 32


echo --------------parity_1.6--------------
cd ~/blockchain-perf/benchmark/parity_1.6
python run.py kill

echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run.py kill 


echo --------------quorum_vote--------------
cd ~/blockchain-perf/benchmark/quorum_vote
./stop-all.sh 32


echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
./stop-all.sh 32


