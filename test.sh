#!/bin/bash

echo "Press [CTRL+C] to stop.."
while :
do
	curl -X GET localhost:1935
	echo ""
	sleep 1
done