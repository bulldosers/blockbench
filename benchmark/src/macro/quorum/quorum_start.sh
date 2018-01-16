geth --datadir ~/test/data/quorum init genesis.json

geth --datadir ~/test/data/quorum --voteaccount 0xeb6902c98ed64b7b16f743a7c09b36b8fa1aff59 --votepassword "" --blockmakeraccount 0xeb6902c98ed64b7b16f743a7c09b36b8fa1aff59  --blockmakerpassword "" --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --maxblocktime 3 --minblocktime 3


------------------ycsb------------------------
./driver -P workloads/workloada.spec -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db quorum


-----------------smallbank--------------------
./driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db quorum


scp ~/test/data/quorum/keystore/UTC--2017-09-12T12-56-42.783882892Z--eb6902c98ed64b7b16f743a7c09b36b8fa1aff59 10.0.0.3:~/test/data/quorum2/keystore/

ssh 10.0.0.3 /home/dell/Downloads/quorum/build/bin/geth --datadir ~/test/data/quorum1 init /home/dell/anh/blockchain-perf/src/macro/quorum/genesis.json
ssh 10.0.0.4 /home/dell/Downloads/quorum/build/bin/geth --datadir ~/test/data/quorum2 init /home/dell/anh/blockchain-perf/src/macro/quorum/genesis.json

ssh 10.0.0.3 . ~/.bashrc && /home/dell/Downloads/quorum/build/bin/geth --datadir ~/test/data/quorum1 --voteaccount 0xeb6902c98ed64b7b16f743a7c09b36b8fa1aff59 --votepassword "" --blockmakeraccount 0xeb6902c98ed64b7b16f743a7c09b36b8fa1aff59  --blockmakerpassword "" --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --maxblocktime 2 --minblocktime 3
ssh 10.0.0.4 . ~/.bashrc && /home/dell/Downloads/quorum/build/bin/geth --datadir ~/test/data/quorum2 --voteaccount 0xeb6902c98ed64b7b16f743a7c09b36b8fa1aff59 --votepassword "" --blockmakeraccount 0xeb6902c98ed64b7b16f743a7c09b36b8fa1aff59  --blockmakerpassword "" --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --maxblocktime 2 --minblocktime 3

ssh 10.0.0.3 killall -KILL geth && rm -rf $ETH_DATA && rm -rf ~/.eth*
ssh 10.0.0.3 geth_1.4.2 --datadir ~/test/data --password <(echo -n "") account new
ssh 10.0.0.3 geth_1.4.2 --datadir ~/test/data init /home/dell/anh/blockchain-perf/benchmark/ethereum/CustomGenesis_2.json
ssh 10.0.0.3 geth_1.4.2 --datadir ~/test/data --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --maxpeers 32 --networkid 9119 --unlock 0 --password <(echo -n "") --mine --minerthreads 8

ssh 10.0.0.4 killall -KILL geth && rm -rf $ETH_DATA && rm -rf ~/.eth*
ssh 10.0.0.4 geth_1.4.2 --datadir ~/test/data --password <(echo -n "") account new
ssh 10.0.0.4 geth_1.4.2 --datadir ~/test/data init /home/dell/anh/blockchain-perf/benchmark/ethereum/CustomGenesis_2.json
ssh 10.0.0.4 geth_1.4.2 --datadir ~/test/data --rpc --rpcaddr 0.0.0.0 --rpcport "8000" --rpccorsdomain "*" --gasprice 0 --maxpeers 32 --networkid 9119 --unlock 0 --password <(echo -n "") --mine --minerthreads 8
