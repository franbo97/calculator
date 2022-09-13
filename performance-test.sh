#!/bin/bash
ENDPOINT=$1
N=100

START=$(date +%s)
for i in $(seq ${N}); do
	curl ${ENDPOINT}/startup
done
END=$(date +%s)

RUNTIME=$((END-START))
AVG=$((RUNTIME/N))

echo $RUNTIME
echo $AVG

test ${AVG} -lt 1
