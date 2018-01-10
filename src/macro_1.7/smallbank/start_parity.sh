#!/bin/bash

#/users/dinhtta/.cargo/bin/parity --config config.toml --rpcport 8545 --rpcaddr 0.0.0.0  --jsonrpc-hosts "all"
~/Downloads/parity-1.7.0/target/release/parity --config config.toml --rpcport 8545 --rpcaddr 0.0.0.0  --jsonrpc-hosts "all"


parity --config config.toml --rpcport 8545 --rpcaddr 0.0.0.0  --jsonrpc-hosts "all"

./driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db parity  > parity_client_1.7.0


./driver -ops 100 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db parity