
peer node start
nohup ./driver 10000000 $1 1000 /data/dinhtta/stat.log $host:7050/chaincode > $LOG_DIR/client_$host"_"$1 2>&1 &


./driver -threads 4 -txrate 10 -endpoint 127.0.0.1:8545 -db ethereum -P workloads/workloada.spec
