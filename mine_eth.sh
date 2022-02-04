#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=etchash.unmineable.com:3333
WALLET=SHIB:0xf6114d1ba3f957c361b53d7fba88a4df2706bcae.worker1

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
while [ $? -eq 42 ]; do
    sleep 10s
    ./lolMiner --algo ETHASH --pool $POOL --user $WALLET $@
done

