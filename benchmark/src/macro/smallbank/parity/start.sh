#!/bin/bash

parity --config config.toml --rpcport 8545 --rpcaddr 0.0.0.0 --jsonrpc-hosts "all"

./driver -ops 10000 -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db parity  > parity_client_3

driver -db parity -threads 4 -P workloads/workloada.spec -endpoint 127.0.0.1:8545 -txrate 10  > parity_client_1