NS=[12,16]
NODES=['10.0.0.{}'.format(x) for x in range(3,36)]

CLIENTS=['10.0.0.{}'.format(x) for x in range(85,100)]
PORT='8545'
#THREADS=[2,4,8,16,32]
#RATES=[1,2,4,8,12,16]
THREADS=[32]
RATES=[8,16]

HOME_DIR='/users/fuwanzeng/blockchain-perf/benchmark/parity_1.7'
CHAIN_DATA='/data/fuwanzeng/chain-data'
#LOG_DIR='/data/fuwanzeng/logs/parity'
#PARITY_EXE='/users/dinhtta/.cargo/bin/parity'
CLIENT_LOG='logs_drop'
CLIENT_DRIVER='start_ycsb_client.sh'
PARITY_EXE='/users/fuwanzeng/download/parity-1.7.0/target/release/parity'
CLIENT_LOG='logs_drop_1.7.0'

enode_command = 'curl --data \'{{"jsonrpc": "2.0", "method": "parity_enode", "params":[], "id": 0}}\' -H "Content-Type: application/json" -X POST {}:{}'
add_peer = 'curl --data \'{{"jsonrpc": "2.0", "method": "parity_addReservedPeer", "params":["{}"], "id": 0}}\' -H "Content-Type: application/json" -X POST {}:{}'
kill_command = 'ssh -o StrictHostKeyChecking=no fuwanzeng@{} "killall -KILL {}"'
ssh_command = 'ssh -o StrictHostKeyChecking=no fuwanzeng@{} {}'

partition_cmd = './partition.sh {} {} {} &'
TIMEOUT=150
