ETH_HOME=~/blockchain-perf/benchmark/ustore_eth
HOSTS=$ETH_HOME/hosts
CLIENTS=$ETH_HOME/clients
ETH_DATA=/data/fuwanzeng/eth
LOG_DIR=$ETH_HOME/ustore_ycsb
EXE_HOME=~/ycsb
BENCHMARK=ycsb
GETH=/data/fuwanzeng/gowork/src/github.com/etheruem/go-ethereum/build/bin/geth

. ~/.bashrc
##comment these out for smallbank
#EXE_HOME=$ETH_HOME/../../src/smallbank/ethereum/ycsb
#BENCHMARK=ycsb 
