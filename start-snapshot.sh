#!/bin/bash
set -e

NODE_DIR=/node/data
SNAPSHOT_DIR=/node/data/snapshots/
SNAPSHOT_PATH=/node/data/snapshots/snapshots.bin

rm -rf $NODE_DIR/*

mkdir -p $SNAPSHOT_DIR

if [ ! $SNAPSHOT_URL ]; then  
    SNAPSHOT_URL=$(curl https://api.fibos123.com/last_snapshot)
fi

curl -o "$SNAPSHOT_PATH" "$SNAPSHOT_URL"

sh ./entrypoint.sh node