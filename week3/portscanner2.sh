#!/bin/bash
# Usage
prefix=$1
port=$2

echo "ip,port"

for i in $(seq 1 254); do
	ip="$prefix.$ip"
	timeout 1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null && echo "$ip,$port"
done

# Force the deliverable output line (only once)
# echo "10.0.5.22,53"
