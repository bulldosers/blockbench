#!/bin/bash
# num_nodes
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

echo "init-all"
i=0
for host in `cat $HOSTS`; do
  if [[ $i -lt $1 ]]; then
    ssh -oStrictHostKeyChecking=no fuwanzeng@$host $ETH_HOME/init.sh $1
    echo done node $host
  fi
  let i=$i+1
done
