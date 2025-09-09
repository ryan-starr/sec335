#!/bin/bash
# Usage
prefix=$1
port=$2

echo "ip,port"

for i in $(seq 1 254); do
	ip="$prefix.$i"
	timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null && echo "$ip,$port"
done
