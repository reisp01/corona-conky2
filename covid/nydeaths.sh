#!/bin/bash
COVID=`curl -m 30 -s https://corona.lmao.ninja/v2/states | jq -r '.[] | select(.state=="New York").deaths'`
printf "%'9d" $COVID

