#!/bin/bash
echo --------------quorum_pbft--------------
cd ~/blockchain-perf/benchmark/quorum_pbft
python config.py
python exps.py
date
echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run_all.py
date
echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
python config.py
python exps.py
date
echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
python config.py
python exps.py
date
echo --------------quorum-vote--------------
cd ~/blockchain-perf/benchmark/quorum_vote
python config.py
python exps.py
date


cd ~/blockchain-perf/benchmark
mv data data_1 
echo --------------quorum_pbft--------------
cd ~/blockchain-perf/benchmark/quorum_pbft
python config.py
python exps.py
date
echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run_all.py
date
echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
python config.py
python exps.py
date
echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
python config.py
python exps.py
date
echo --------------quorum-vote--------------
cd ~/blockchain-perf/benchmark/quorum_vote
python config.py
python exps.py
date

cd ~/blockchain-perf/benchmark
mv data data_2
echo --------------quorum_pbft--------------
cd ~/blockchain-perf/benchmark/quorum_pbft
python config.py
python exps.py
date
echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run_all.py
date
echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
python config.py
python exps.py
date
echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
python config.py
python exps.py
date
echo --------------quorum-vote--------------
cd ~/blockchain-perf/benchmark/quorum_vote
python config.py
python exps.py
date

cd ~/blockchain-perf/benchmark
mv data data_3
echo --------------quorum_pbft--------------
cd ~/blockchain-perf/benchmark/quorum_pbft
python config.py
python exps.py
date
echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run_all.py
date
echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
python config.py
python exps.py
date
echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
python config.py
python exps.py
date
echo --------------quorum-vote--------------
cd ~/blockchain-perf/benchmark/quorum_vote
python config.py
python exps.py
date

cd ~/blockchain-perf/benchmark
mv data data_4

echo --------------quorum_pbft--------------
cd ~/blockchain-perf/benchmark/quorum_pbft
python config.py
python exps.py
date
echo --------------parity_1.7--------------
cd ~/blockchain-perf/benchmark/parity_1.7
python run_all.py
date
echo --------------quorum_raft--------------
cd ~/blockchain-perf/benchmark/quorum_raft
python config.py
python exps.py
date
echo --------------ethereum_1.7--------------
cd ~/blockchain-perf/benchmark/ethereum_1.7
python config.py
python exps.py
date
echo --------------quorum-vote--------------
cd ~/blockchain-perf/benchmark/quorum_vote
python config.py
python exps.py
date

cd ~/blockchain-perf/benchmark
mv data data_0