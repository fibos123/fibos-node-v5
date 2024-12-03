#!/bin/bash
set -e

NODE_DIR=/node/data
SNAPSHOT_PATH=/node/data/snapshots/snapshots.bin

rm -rf $NODE_DIR/blocks
rm -rf $NODE_DIR/protocol_features
rm -rf $NODE_DIR/snapshots/*
rm -rf $NODE_DIR/state
rm -rf $NODE_DIR/config.ini

if [ ! -d $NODE_DIR ];then
    mkdir $NODE_DIR
fi

if [ ! $SNAPSHOT_URL ]; then  
    SNAPSHOT_URL=$(curl https://api.fibos123.com/last_snapshot)
fi

curl -o "$SNAPSHOT_PATH" "$SNAPSHOT_URL"

sh ./entrypoint.sh node