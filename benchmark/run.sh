#!/bin/bash
echo --------------quorum_pbft--------------
cd ~/blockchain-perf/benchmark/quorum_pbft
python config.py
python exps.py
date

#echo --------------parity_1.6--------------
#cd ~/blockchain-perf/benchmark/parity_1.6
#python run_all.py
#date

echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run_all.py
date

#echo --------------quorum_vote--------------
#cd ~/blockchain-perf/benchmark/quorum_vote
#python config.py
#python exps.py
#date

echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
python config.py
python exps.py
date

#echo --------------ethereum_1.4--------------
#cd ~/blockchain-perf/benchmark/ethereum_1.4
#python config.py
#python exps.py
#date

echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
python config.py
python exps.py
date

#echo --------------ethereum_1.5--------------
#cd ~/blockchain-perf/benchmark/ethereum_1.5
#python config.py
#python exps.py
#date


#cd ~/blockchain-perf/benchmark
#mv data data_1
