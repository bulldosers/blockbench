#!/bin/bash
cd `dirname ${BASH_SOURCE-$0}`
. env.sh

echo "stop.sh"
killall -KILL geth ${GETH}
rm -rf $ETH_DATA
rm -rf ~/.eth*
