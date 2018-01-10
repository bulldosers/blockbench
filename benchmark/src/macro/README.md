# Macro benchmark workloads
This directory contains the drivers for macro benchmark workload - YCSB and SmallBank.

The DoNothing micro benchmark workload which is targeted to test the consensus layer is also integrated into the ycsbc-based driver.

The driver in `kvstore` directory provides the following workloads:

* KVStore: for Ethereum, Parity and Hyperledger

  Usage example:
  ```
  ./driver -db parity -threads 1 -P workloads/workloada.spec -txrate 5 -endpoint localhost:8545 -wl ycsb -wt 20
  ```

* SmallBank: for Ethereum and Parity 

  Usage example:
  ```
  ./driver -db etheruem -threads 1 -P workloads/workloada.spec -txrate 5 -endpoint localhost:8545 -wl smallbank -wt 20
  ```

* DoNothing: for Ethereum, Parity and Hyperledger

  Usage example:
  ```
  ./driver -db hyperledger -threads 1 -P workloads/workloada.spec -txrate 5 -endpoint localhost:7050/chaincode -wl donothing
  ```

The `smallbank` directory contains the driver of SmallBank workload for Hyperledger


geth --datadir=~/test/data init geth/genesis.json
geth --datadir=~/test/data --password <(echo -n "") account new
geth --datadir=~/test/data --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --unlock 0 --password <(echo -n "") js <(echo 'console.log(admin.nodeInfo.enode);')
geth --datadir=~/test/data --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --unlock 0 --password <(echo -n "") --mine --minerthreads 8 > ~/test/data/eth_log 2>&1
geth --exec "admin.addPeer("enode://681e8181eb3c8eb26007c487a7ac40eaa0fb64c2e71c32535dc6ad9e70fe8821b9d36930e262ab66e32499ae7c5fb97c6aed843bb10a621347d19a8a4ecf0952@10.0.0.3:30303")" attach ipc:/~/test/data/geth.ipc
